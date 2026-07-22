package com.hermes.android.ui.moa;

import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.ProviderSwitchCoordinator;
import com.hermes.android.R;
import com.hermes.android.data.HermesConfigRepository;
import com.hermes.android.data.MoaNormalize;
import com.hermes.android.data.MoaPreset;
import com.hermes.android.data.MoaSection;
import com.hermes.android.data.MoaSlot;
import com.hermes.android.data.MoaSlotCandidatesKt;
import com.hermes.android.data.SlotCandidate;
import com.hermes.android.data.oauth.AuthJsonStore;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: MoaCouncilViewModel.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u0000 32\u00020\u0001:\u0003123B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u001a\u001a\u00020\u0012J\u000e\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u001c\u001a\u00020\u0012J\u000e\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017J\u0006\u0010\u001e\u001a\u00020\u0012J\u001d\u0010\u001f\u001a\u00020\u00122\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\"0!H\u0082\bJ\u000e\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u0017J\u0016\u0010%\u001a\u00020\u00122\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020\u0012J\u000e\u0010+\u001a\u00020\u00122\u0006\u0010&\u001a\u00020'J\u000e\u0010,\u001a\u00020\u00122\u0006\u0010(\u001a\u00020)J\u0016\u0010-\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010.\u001a\u00020/J\u0006\u00100\u001a\u00020\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u00064"}, d2 = {"Lcom/hermes/android/ui/moa/MoaCouncilViewModel;", BuildConfig.FLAVOR, "repo", "Lcom/hermes/android/data/HermesConfigRepository;", "hermesDir", "Ljava/io/File;", "io", "Lkotlinx/coroutines/CoroutineDispatcher;", "<init>", "(Lcom/hermes/android/data/HermesConfigRepository;Ljava/io/File;Lkotlinx/coroutines/CoroutineDispatcher;)V", "_state", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;", "state", "Lkotlinx/coroutines/flow/StateFlow;", "getState", "()Lkotlinx/coroutines/flow/StateFlow;", "refresh", BuildConfig.FLAVOR, "scope", "Lkotlinx/coroutines/CoroutineScope;", "usePreset", AppMeasurementSdk.ConditionalUserProperty.NAME, BuildConfig.FLAVOR, "fixStaleInUse", "requestDelete", "cancelDelete", "confirmDelete", "openCreate", "openEdit", "closeEditor", "updateEditor", "block", "Lkotlin/Function1;", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", "editorSetName", "v", "editorSetReference", "index", BuildConfig.FLAVOR, "slot", "Lcom/hermes/android/data/MoaSlot;", "editorAddReference", "editorRemoveReference", "editorSetAggregator", "save", "useNow", BuildConfig.FLAVOR, "dismissError", "UiState", "EditorState", "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MoaCouncilViewModel {
    public static final String LAST_PRESET_SENTINEL = "__moa_last_preset__";
    private final MutableStateFlow<UiState> _state;
    private final File hermesDir;
    private final CoroutineDispatcher io;
    private final HermesConfigRepository repo;
    private final StateFlow<UiState> state;
    public static final int $stable = 8;

    public MoaCouncilViewModel(HermesConfigRepository hermesConfigRepository, File file, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(hermesConfigRepository, "repo");
        Intrinsics.checkNotNullParameter(file, "hermesDir");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "io");
        this.repo = hermesConfigRepository;
        this.hermesDir = file;
        this.io = coroutineDispatcher;
        MutableStateFlow<UiState> MutableStateFlow = StateFlowKt.MutableStateFlow(new UiState(false, null, null, false, null, false, null, null, null, 511, null));
        this._state = MutableStateFlow;
        this.state = FlowKt.asStateFlow(MutableStateFlow);
    }

    public /* synthetic */ MoaCouncilViewModel(HermesConfigRepository hermesConfigRepository, File file, CoroutineDispatcher coroutineDispatcher, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hermesConfigRepository, file, (i & 4) != 0 ? Dispatchers.getIO() : coroutineDispatcher);
    }

    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bm\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0005HÆ\u0003J\t\u0010#\u001a\u00020\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0\nHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u000eHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0007HÆ\u0003Jo\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010+\u001a\u00020\u00032\b\u0010,\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010-\u001a\u00020.HÖ\u0001J\t\u0010/\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018¨\u00060"}, d2 = {"Lcom/hermes/android/ui/moa/MoaCouncilViewModel$UiState;", BuildConfig.FLAVOR, "loading", BuildConfig.FLAVOR, "section", "Lcom/hermes/android/data/MoaSection;", "inUsePreset", BuildConfig.FLAVOR, "staleInUse", "candidates", BuildConfig.FLAVOR, "Lcom/hermes/android/data/SlotCandidate;", "hasAnyProvider", "editor", "Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", "error", "pendingDelete", "<init>", "(ZLcom/hermes/android/data/MoaSection;Ljava/lang/String;ZLjava/util/List;ZLcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;Ljava/lang/String;Ljava/lang/String;)V", "getLoading", "()Z", "getSection", "()Lcom/hermes/android/data/MoaSection;", "getInUsePreset", "()Ljava/lang/String;", "getStaleInUse", "getCandidates", "()Ljava/util/List;", "getHasAnyProvider", "getEditor", "()Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", "getError", "getPendingDelete", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class UiState {
        public static final int $stable = 8;
        private final List<SlotCandidate> candidates;
        private final EditorState editor;
        private final String error;
        private final boolean hasAnyProvider;
        private final String inUsePreset;
        private final boolean loading;
        private final String pendingDelete;
        private final MoaSection section;
        private final boolean staleInUse;

        public UiState() {
            this(false, null, null, false, null, false, null, null, null, 511, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UiState copy$default(UiState uiState, boolean z, MoaSection moaSection, String str, boolean z2, List list, boolean z3, EditorState editorState, String str2, String str3, int i, Object obj) {
            return uiState.copy((i & 1) != 0 ? uiState.loading : z, (i & 2) != 0 ? uiState.section : moaSection, (i & 4) != 0 ? uiState.inUsePreset : str, (i & 8) != 0 ? uiState.staleInUse : z2, (i & 16) != 0 ? uiState.candidates : list, (i & 32) != 0 ? uiState.hasAnyProvider : z3, (i & 64) != 0 ? uiState.editor : editorState, (i & 128) != 0 ? uiState.error : str2, (i & 256) != 0 ? uiState.pendingDelete : str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getLoading() {
            return this.loading;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final MoaSection getSection() {
            return this.section;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getInUsePreset() {
            return this.inUsePreset;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final boolean getStaleInUse() {
            return this.staleInUse;
        }

        public final List<SlotCandidate> component5() {
            return this.candidates;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final boolean getHasAnyProvider() {
            return this.hasAnyProvider;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final EditorState getEditor() {
            return this.editor;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getError() {
            return this.error;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getPendingDelete() {
            return this.pendingDelete;
        }

        public final UiState copy(boolean loading, MoaSection section, String inUsePreset, boolean staleInUse, List<SlotCandidate> candidates, boolean hasAnyProvider, EditorState editor, String error, String pendingDelete) {
            Intrinsics.checkNotNullParameter(section, "section");
            Intrinsics.checkNotNullParameter(inUsePreset, "inUsePreset");
            Intrinsics.checkNotNullParameter(candidates, "candidates");
            return new UiState(loading, section, inUsePreset, staleInUse, candidates, hasAnyProvider, editor, error, pendingDelete);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UiState)) {
                return false;
            }
            UiState uiState = (UiState) other;
            return this.loading == uiState.loading && Intrinsics.areEqual(this.section, uiState.section) && Intrinsics.areEqual(this.inUsePreset, uiState.inUsePreset) && this.staleInUse == uiState.staleInUse && Intrinsics.areEqual(this.candidates, uiState.candidates) && this.hasAnyProvider == uiState.hasAnyProvider && Intrinsics.areEqual(this.editor, uiState.editor) && Intrinsics.areEqual(this.error, uiState.error) && Intrinsics.areEqual(this.pendingDelete, uiState.pendingDelete);
        }

        public int hashCode() {
            int iHashCode = ((((((((((Boolean.hashCode(this.loading) * 31) + this.section.hashCode()) * 31) + this.inUsePreset.hashCode()) * 31) + Boolean.hashCode(this.staleInUse)) * 31) + this.candidates.hashCode()) * 31) + Boolean.hashCode(this.hasAnyProvider)) * 31;
            EditorState editorState = this.editor;
            int iHashCode2 = (iHashCode + (editorState == null ? 0 : editorState.hashCode())) * 31;
            String str = this.error;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.pendingDelete;
            return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
        }

        public String toString() {
            return "UiState(loading=" + this.loading + ", section=" + this.section + ", inUsePreset=" + this.inUsePreset + ", staleInUse=" + this.staleInUse + ", candidates=" + this.candidates + ", hasAnyProvider=" + this.hasAnyProvider + ", editor=" + this.editor + ", error=" + this.error + ", pendingDelete=" + this.pendingDelete + ")";
        }

        public UiState(boolean z, MoaSection moaSection, String str, boolean z2, List<SlotCandidate> list, boolean z3, EditorState editorState, String str2, String str3) {
            Intrinsics.checkNotNullParameter(moaSection, "section");
            Intrinsics.checkNotNullParameter(str, "inUsePreset");
            Intrinsics.checkNotNullParameter(list, "candidates");
            this.loading = z;
            this.section = moaSection;
            this.inUsePreset = str;
            this.staleInUse = z2;
            this.candidates = list;
            this.hasAnyProvider = z3;
            this.editor = editorState;
            this.error = str2;
            this.pendingDelete = str3;
        }

        public /* synthetic */ UiState(boolean z, MoaSection moaSection, String str, boolean z2, List list, boolean z3, EditorState editorState, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? true : z, (i & 2) != 0 ? new MoaSection(BuildConfig.FLAVOR, BuildConfig.FLAVOR, CollectionsKt.emptyList()) : moaSection, (i & 4) == 0 ? str : BuildConfig.FLAVOR, (i & 8) != 0 ? false : z2, (i & 16) != 0 ? CollectionsKt.emptyList() : list, (i & 32) == 0 ? z3 : true, (i & 64) != 0 ? null : editorState, (i & 128) != 0 ? null : str2, (i & 256) == 0 ? str3 : null);
        }

        public final boolean getLoading() {
            return this.loading;
        }

        public final MoaSection getSection() {
            return this.section;
        }

        public final String getInUsePreset() {
            return this.inUsePreset;
        }

        public final boolean getStaleInUse() {
            return this.staleInUse;
        }

        public final List<SlotCandidate> getCandidates() {
            return this.candidates;
        }

        public final boolean getHasAnyProvider() {
            return this.hasAnyProvider;
        }

        public final EditorState getEditor() {
            return this.editor;
        }

        public final String getError() {
            return this.error;
        }

        public final String getPendingDelete() {
            return this.pendingDelete;
        }
    }

    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b!\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0016J\u000f\u0010#\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0016Jj\u0010(\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\b\b\u0002\u0010\u000e\u001a\u00020\u00032\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\u00032\b\u0010+\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010,\u001a\u00020\u0007HÖ\u0001J\t\u0010-\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0012R\u0015\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u001f\u0010\u0016¨\u0006."}, d2 = {"Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", BuildConfig.FLAVOR, "isNew", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, BuildConfig.FLAVOR, "nameError", BuildConfig.FLAVOR, "references", BuildConfig.FLAVOR, "Lcom/hermes/android/data/MoaSlot;", "aggregator", "original", "Lcom/hermes/android/data/MoaPreset;", "overwriteConfirmNeeded", "refsError", "<init>", "(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)V", "()Z", "getName", "()Ljava/lang/String;", "getNameError", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getReferences", "()Ljava/util/List;", "getAggregator", "()Lcom/hermes/android/data/MoaSlot;", "getOriginal", "()Lcom/hermes/android/data/MoaPreset;", "getOverwriteConfirmNeeded", "getRefsError", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(ZLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;Lcom/hermes/android/data/MoaSlot;Lcom/hermes/android/data/MoaPreset;ZLjava/lang/Integer;)Lcom/hermes/android/ui/moa/MoaCouncilViewModel$EditorState;", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class EditorState {
        public static final int $stable = 8;
        private final MoaSlot aggregator;
        private final boolean isNew;
        private final String name;
        private final Integer nameError;
        private final MoaPreset original;
        private final boolean overwriteConfirmNeeded;
        private final List<MoaSlot> references;
        private final Integer refsError;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ EditorState copy$default(EditorState editorState, boolean z, String str, Integer num, List list, MoaSlot moaSlot, MoaPreset moaPreset, boolean z2, Integer num2, int i, Object obj) {
            return editorState.copy((i & 1) != 0 ? editorState.isNew : z, (i & 2) != 0 ? editorState.name : str, (i & 4) != 0 ? editorState.nameError : num, (i & 8) != 0 ? editorState.references : list, (i & 16) != 0 ? editorState.aggregator : moaSlot, (i & 32) != 0 ? editorState.original : moaPreset, (i & 64) != 0 ? editorState.overwriteConfirmNeeded : z2, (i & 128) != 0 ? editorState.refsError : num2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsNew() {
            return this.isNew;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Integer getNameError() {
            return this.nameError;
        }

        public final List<MoaSlot> component4() {
            return this.references;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final MoaSlot getAggregator() {
            return this.aggregator;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final MoaPreset getOriginal() {
            return this.original;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final boolean getOverwriteConfirmNeeded() {
            return this.overwriteConfirmNeeded;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final Integer getRefsError() {
            return this.refsError;
        }

        public final EditorState copy(boolean isNew, String name, Integer nameError, List<MoaSlot> references, MoaSlot aggregator, MoaPreset original, boolean overwriteConfirmNeeded, Integer refsError) {
            Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
            Intrinsics.checkNotNullParameter(references, "references");
            Intrinsics.checkNotNullParameter(aggregator, "aggregator");
            return new EditorState(isNew, name, nameError, references, aggregator, original, overwriteConfirmNeeded, refsError);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof EditorState)) {
                return false;
            }
            EditorState editorState = (EditorState) other;
            return this.isNew == editorState.isNew && Intrinsics.areEqual(this.name, editorState.name) && Intrinsics.areEqual(this.nameError, editorState.nameError) && Intrinsics.areEqual(this.references, editorState.references) && Intrinsics.areEqual(this.aggregator, editorState.aggregator) && Intrinsics.areEqual(this.original, editorState.original) && this.overwriteConfirmNeeded == editorState.overwriteConfirmNeeded && Intrinsics.areEqual(this.refsError, editorState.refsError);
        }

        public int hashCode() {
            int iHashCode = ((Boolean.hashCode(this.isNew) * 31) + this.name.hashCode()) * 31;
            Integer num = this.nameError;
            int iHashCode2 = (((((iHashCode + (num == null ? 0 : num.hashCode())) * 31) + this.references.hashCode()) * 31) + this.aggregator.hashCode()) * 31;
            MoaPreset moaPreset = this.original;
            int iHashCode3 = (((iHashCode2 + (moaPreset == null ? 0 : moaPreset.hashCode())) * 31) + Boolean.hashCode(this.overwriteConfirmNeeded)) * 31;
            Integer num2 = this.refsError;
            return iHashCode3 + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "EditorState(isNew=" + this.isNew + ", name=" + this.name + ", nameError=" + this.nameError + ", references=" + this.references + ", aggregator=" + this.aggregator + ", original=" + this.original + ", overwriteConfirmNeeded=" + this.overwriteConfirmNeeded + ", refsError=" + this.refsError + ")";
        }

        public EditorState(boolean z, String str, Integer num, List<MoaSlot> list, MoaSlot moaSlot, MoaPreset moaPreset, boolean z2, Integer num2) {
            Intrinsics.checkNotNullParameter(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            Intrinsics.checkNotNullParameter(list, "references");
            Intrinsics.checkNotNullParameter(moaSlot, "aggregator");
            this.isNew = z;
            this.name = str;
            this.nameError = num;
            this.references = list;
            this.aggregator = moaSlot;
            this.original = moaPreset;
            this.overwriteConfirmNeeded = z2;
            this.refsError = num2;
        }

        public final boolean isNew() {
            return this.isNew;
        }

        public final String getName() {
            return this.name;
        }

        public final Integer getNameError() {
            return this.nameError;
        }

        public /* synthetic */ EditorState(boolean z, String str, Integer num, List list, MoaSlot moaSlot, MoaPreset moaPreset, boolean z2, Integer num2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, str, (i & 4) != 0 ? null : num, (i & 8) != 0 ? CollectionsKt.emptyList() : list, (i & 16) != 0 ? new MoaSlot(BuildConfig.FLAVOR, BuildConfig.FLAVOR) : moaSlot, (i & 32) != 0 ? null : moaPreset, (i & 64) != 0 ? false : z2, (i & 128) != 0 ? null : num2);
        }

        public final List<MoaSlot> getReferences() {
            return this.references;
        }

        public final MoaSlot getAggregator() {
            return this.aggregator;
        }

        public final MoaPreset getOriginal() {
            return this.original;
        }

        public final boolean getOverwriteConfirmNeeded() {
            return this.overwriteConfirmNeeded;
        }

        public final Integer getRefsError() {
            return this.refsError;
        }
    }

    public final StateFlow<UiState> getState() {
        return this.state;
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilViewModel$refresh$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilViewModel$refresh$1", f = "MoaCouncilViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C00431 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C00431(Continuation<? super C00431> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MoaCouncilViewModel.this.new C00431(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            boolean z;
            boolean z2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                MoaSection moaSection = MoaCouncilViewModel.this.repo.readMoaSection();
                String activeMoaPresetName = MoaCouncilViewModel.this.repo.readActiveMoaPresetName();
                List<MoaPreset> presets = moaSection.getPresets();
                ArrayList arrayList = new ArrayList();
                for (MoaPreset moaPreset : presets) {
                    CollectionsKt.addAll(arrayList, CollectionsKt.plus(moaPreset.getReferenceModels(), moaPreset.getAggregator()));
                }
                List listBuildSlotCandidates$default = MoaSlotCandidatesKt.buildSlotCandidates$default(null, new MoaCouncilViewModel$refresh$1$candidates$1(MoaCouncilViewModel.this.repo), AuthJsonStore.INSTANCE.configuredProviders(MoaCouncilViewModel.this.hermesDir), MoaCouncilViewModel.this.repo.readCustomProviderNames(), arrayList, 1, null);
                MutableStateFlow mutableStateFlow = MoaCouncilViewModel.this._state;
                while (true) {
                    Object value = mutableStateFlow.getValue();
                    UiState uiState = (UiState) value;
                    if (activeMoaPresetName.length() <= 0) {
                        z = false;
                        break;
                    }
                    List<MoaPreset> presets2 = moaSection.getPresets();
                    if (!(presets2 instanceof Collection) || !presets2.isEmpty()) {
                        Iterator<T> it = presets2.iterator();
                        while (it.hasNext()) {
                            if (Intrinsics.areEqual(((MoaPreset) it.next()).getName(), activeMoaPresetName)) {
                                z = false;
                                break;
                            }
                        }
                    }
                    z = true;
                    List list = listBuildSlotCandidates$default;
                    if ((list instanceof Collection) && list.isEmpty()) {
                        z2 = false;
                    } else {
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            if (((SlotCandidate) it2.next()).getConfigured()) {
                                z2 = true;
                                break;
                            }
                        }
                        z2 = false;
                    }
                    MutableStateFlow mutableStateFlow2 = mutableStateFlow;
                    if (mutableStateFlow2.compareAndSet(value, UiState.copy$default(uiState, false, moaSection, activeMoaPresetName, z, listBuildSlotCandidates$default, z2, null, null, null, 320, null))) {
                        return Unit.INSTANCE;
                    }
                    mutableStateFlow = mutableStateFlow2;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final void refresh(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        BuildersKt.launch$default(scope, this.io, (CoroutineStart) null, new C00431(null), 2, (Object) null);
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilViewModel$usePreset$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilViewModel$usePreset$1", f = "MoaCouncilViewModel.kt", i = {}, l = {LocationRequest.PRIORITY_HIGH_ACCURACY}, m = "invokeSuspend", n = {}, s = {})
    static final class C00441 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ long $token;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C00441(CoroutineScope coroutineScope, long j, String str, Continuation<? super C00441> continuation) {
            super(2, continuation);
            this.$scope = coroutineScope;
            this.$token = j;
            this.$name = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> c00441 = MoaCouncilViewModel.this.new C00441(this.$scope, this.$token, this.$name, continuation);
            c00441.L$0 = obj;
            return c00441;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Object value;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    long j = this.$token;
                    MoaCouncilViewModel moaCouncilViewModel = MoaCouncilViewModel.this;
                    String str = this.$name;
                    Result.Companion companion = Result.Companion;
                    ProviderSwitchCoordinator providerSwitchCoordinator = ProviderSwitchCoordinator.INSTANCE;
                    MoaCouncilViewModel$usePreset$1$1$1 moaCouncilViewModel$usePreset$1$1$1 = new MoaCouncilViewModel$usePreset$1$1$1(moaCouncilViewModel, str, null);
                    this.label = 1;
                    obj = providerSwitchCoordinator.commitIfLatest(j, moaCouncilViewModel$usePreset$1$1$1, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                obj2 = Result.constructor-impl(Boxing.boxBoolean(((Boolean) obj).booleanValue()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj2 = Result.constructor-impl(ResultKt.createFailure(th));
            }
            MoaCouncilViewModel moaCouncilViewModel2 = MoaCouncilViewModel.this;
            Throwable th2 = Result.exceptionOrNull-impl(obj2);
            if (th2 != null) {
                MutableStateFlow mutableStateFlow = moaCouncilViewModel2._state;
                do {
                    value = mutableStateFlow.getValue();
                } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, th2.getMessage(), null, 383, null)));
            }
            MoaCouncilViewModel.this.refresh(this.$scope);
            return Unit.INSTANCE;
        }
    }

    public final void usePreset(CoroutineScope scope, String name) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        BuildersKt.launch$default(scope, this.io, (CoroutineStart) null, new C00441(scope, ProviderSwitchCoordinator.INSTANCE.onSelected(), name, null), 2, (Object) null);
    }

    public final void fixStaleInUse(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        String defaultPreset = ((UiState) this._state.getValue()).getSection().getDefaultPreset();
        if (defaultPreset.length() > 0) {
            usePreset(scope, defaultPreset);
        }
    }

    public final void requestDelete(String name) {
        Object value;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, null, name, 255, null)));
    }

    public final void cancelDelete() {
        Object value;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, null, null, 255, null)));
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilViewModel$confirmDelete$1, reason: invalid class name */
    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilViewModel$confirmDelete$1", f = "MoaCouncilViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        final /* synthetic */ CoroutineScope $scope;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(CoroutineScope coroutineScope, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$scope = coroutineScope;
            this.$name = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass1 = MoaCouncilViewModel.this.new AnonymousClass1(this.$scope, this.$name, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Object value;
            Object value2;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MoaCouncilViewModel moaCouncilViewModel = MoaCouncilViewModel.this;
            String str = this.$name;
            try {
                Result.Companion companion = Result.Companion;
                obj2 = Result.constructor-impl(moaCouncilViewModel.repo.deleteMoaPreset(str));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj2 = Result.constructor-impl(ResultKt.createFailure(th));
            }
            MoaCouncilViewModel moaCouncilViewModel2 = MoaCouncilViewModel.this;
            Throwable th2 = Result.exceptionOrNull-impl(obj2);
            if (th2 == null) {
                HermesConfigRepository.MoaDeleteResult moaDeleteResult = (HermesConfigRepository.MoaDeleteResult) obj2;
                MutableStateFlow mutableStateFlow = MoaCouncilViewModel.this._state;
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.compareAndSet(value2, UiState.copy$default((UiState) value2, false, null, null, false, null, false, null, Intrinsics.areEqual(moaDeleteResult, HermesConfigRepository.MoaDeleteResult.RefusedLastPreset.INSTANCE) ? MoaCouncilViewModel.LAST_PRESET_SENTINEL : null, null, 127, null)));
                MoaCouncilViewModel.this.refresh(this.$scope);
                return Unit.INSTANCE;
            }
            MutableStateFlow mutableStateFlow2 = moaCouncilViewModel2._state;
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, th2.getMessage(), null, 127, null)));
            return Unit.INSTANCE;
        }
    }

    public final void confirmDelete(CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        String pendingDelete = ((UiState) this._state.getValue()).getPendingDelete();
        if (pendingDelete == null) {
            return;
        }
        BuildersKt.launch$default(scope, this.io, (CoroutineStart) null, new AnonymousClass1(scope, pendingDelete, null), 2, (Object) null);
    }

    public final void openCreate() {
        Object value;
        List<SlotCandidate> candidates = ((UiState) this._state.getValue()).getCandidates();
        ArrayList arrayList = new ArrayList();
        for (Object obj : candidates) {
            if (((SlotCandidate) obj).getConfigured()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        List<SlotCandidate> listTake = CollectionsKt.take(arrayList2, 2);
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(listTake, 10));
        for (SlotCandidate slotCandidate : listTake) {
            arrayList3.add(new MoaSlot(slotCandidate.getProviderSlug(), slotCandidate.getDefaultModel()));
        }
        ArrayList arrayList4 = arrayList3;
        SlotCandidate slotCandidate2 = (SlotCandidate) CollectionsKt.firstOrNull(arrayList2);
        MoaSlot moaSlot = slotCandidate2 != null ? new MoaSlot(slotCandidate2.getProviderSlug(), slotCandidate2.getDefaultModel()) : new MoaSlot(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, new EditorState(true, BuildConfig.FLAVOR, null, arrayList4, moaSlot, null, false, null, 228, null), null, null, 447, null)));
    }

    public final void openEdit(String name) {
        Object next;
        Object value;
        Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
        Iterator<T> it = ((UiState) this._state.getValue()).getSection().getPresets().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (Intrinsics.areEqual(((MoaPreset) next).getName(), name)) {
                    break;
                }
            }
        }
        MoaPreset moaPreset = (MoaPreset) next;
        if (moaPreset == null) {
            return;
        }
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, new EditorState(false, moaPreset.getName(), null, moaPreset.getReferenceModels(), moaPreset.getAggregator(), moaPreset, false, null, 196, null), null, null, 447, null)));
    }

    public final void closeEditor() {
        Object value;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, null, null, 447, null)));
    }

    private final void updateEditor(Function1<? super EditorState, EditorState> block) {
        Object value;
        UiState uiState;
        UiState uiStateCopy$default;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor != null && (uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, (EditorState) block.invoke(editor), null, null, 447, null)) != null) {
                uiState = uiStateCopy$default;
            }
        } while (!mutableStateFlow.compareAndSet(value, uiState));
    }

    public final void save(CoroutineScope scope, boolean useNow) {
        Object value;
        UiState uiState;
        UiState uiStateCopy$default;
        Object value2;
        UiState uiState2;
        UiState uiStateCopy$default2;
        Object value3;
        UiState uiState3;
        UiState uiStateCopy$default3;
        Object value4;
        UiState uiState4;
        UiState uiStateCopy$default4;
        Intrinsics.checkNotNullParameter(scope, "scope");
        EditorState editor = ((UiState) this._state.getValue()).getEditor();
        if (editor == null) {
            return;
        }
        String string = StringsKt.trim(editor.getName()).toString();
        if (!editor.isNew() || MoaNormalize.INSTANCE.isValidPresetName(string)) {
            List<MoaSlot> references = editor.getReferences();
            ArrayList arrayList = new ArrayList();
            for (Object obj : references) {
                MoaSlot moaSlot = (MoaSlot) obj;
                if (!StringsKt.isBlank(moaSlot.getProvider()) && !StringsKt.isBlank(moaSlot.getModel())) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            if (!arrayList2.isEmpty()) {
                if (!StringsKt.isBlank(editor.getAggregator().getProvider()) && !StringsKt.isBlank(editor.getAggregator().getModel())) {
                    if (editor.isNew()) {
                        List<MoaPreset> presets = ((UiState) this._state.getValue()).getSection().getPresets();
                        if (!(presets instanceof Collection) || !presets.isEmpty()) {
                            Iterator<T> it = presets.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                if (Intrinsics.areEqual(((MoaPreset) it.next()).getName(), string)) {
                                    if (!editor.getOverwriteConfirmNeeded()) {
                                        MutableStateFlow<UiState> mutableStateFlow = this._state;
                                        do {
                                            value2 = mutableStateFlow.getValue();
                                            uiState2 = (UiState) value2;
                                            EditorState editor2 = uiState2.getEditor();
                                            if (editor2 != null && (uiStateCopy$default2 = UiState.copy$default(uiState2, false, null, null, false, null, false, EditorState.copy$default(editor2, false, null, null, null, null, null, true, null, 191, null), null, null, 447, null)) != null) {
                                                uiState2 = uiStateCopy$default2;
                                            }
                                        } while (!mutableStateFlow.compareAndSet(value2, uiState2));
                                        return;
                                    }
                                }
                            }
                        }
                    }
                    MoaPreset original = editor.getOriginal();
                    MoaPreset moaPreset = original == null ? new MoaPreset(string, arrayList2, editor.getAggregator(), null, null, null, false, null, 248, null) : original;
                    BuildersKt.launch$default(scope, this.io, (CoroutineStart) null, new AnonymousClass5(scope, moaPreset.copy((248 & 1) != 0 ? moaPreset.name : string, (248 & 2) != 0 ? moaPreset.referenceModels : arrayList2, (248 & 4) != 0 ? moaPreset.aggregator : editor.getAggregator(), (248 & 8) != 0 ? moaPreset.referenceTemperature : null, (248 & 16) != 0 ? moaPreset.aggregatorTemperature : null, (248 & 32) != 0 ? moaPreset.maxTokens : null, (248 & 64) != 0 ? moaPreset.enabled : false, (248 & 128) != 0 ? moaPreset.extras : null), useNow ? Long.valueOf(ProviderSwitchCoordinator.INSTANCE.onSelected()) : null, string, null), 2, (Object) null);
                    return;
                }
                MutableStateFlow<UiState> mutableStateFlow2 = this._state;
                do {
                    value = mutableStateFlow2.getValue();
                    uiState = (UiState) value;
                    EditorState editor3 = uiState.getEditor();
                    if (editor3 != null && (uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor3, false, null, null, null, null, null, false, Integer.valueOf(R.string.moa_editor_aggregator_error), 127, null), null, null, 447, null)) != null) {
                        uiState = uiStateCopy$default;
                    }
                } while (!mutableStateFlow2.compareAndSet(value, uiState));
                return;
            }
            MutableStateFlow<UiState> mutableStateFlow3 = this._state;
            do {
                value3 = mutableStateFlow3.getValue();
                uiState3 = (UiState) value3;
                EditorState editor4 = uiState3.getEditor();
                if (editor4 != null && (uiStateCopy$default3 = UiState.copy$default(uiState3, false, null, null, false, null, false, EditorState.copy$default(editor4, false, null, null, null, null, null, false, Integer.valueOf(R.string.moa_editor_min_ref_error), 127, null), null, null, 447, null)) != null) {
                    uiState3 = uiStateCopy$default3;
                }
            } while (!mutableStateFlow3.compareAndSet(value3, uiState3));
            return;
        }
        MutableStateFlow<UiState> mutableStateFlow4 = this._state;
        do {
            value4 = mutableStateFlow4.getValue();
            uiState4 = (UiState) value4;
            EditorState editor5 = uiState4.getEditor();
            if (editor5 != null && (uiStateCopy$default4 = UiState.copy$default(uiState4, false, null, null, false, null, false, EditorState.copy$default(editor5, false, null, Integer.valueOf(R.string.moa_editor_name_error), null, null, null, false, null, 251, null), null, null, 447, null)) != null) {
                uiState4 = uiStateCopy$default4;
            }
        } while (!mutableStateFlow4.compareAndSet(value4, uiState4));
    }

    /* JADX INFO: renamed from: com.hermes.android.ui.moa.MoaCouncilViewModel$save$5, reason: invalid class name */
    /* JADX INFO: compiled from: MoaCouncilViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", BuildConfig.FLAVOR, "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.ui.moa.MoaCouncilViewModel$save$5", f = "MoaCouncilViewModel.kt", i = {}, l = {232}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        final /* synthetic */ MoaPreset $preset;
        final /* synthetic */ CoroutineScope $scope;
        final /* synthetic */ Long $useNowToken;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(CoroutineScope coroutineScope, MoaPreset moaPreset, Long l, String str, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$scope = coroutineScope;
            this.$preset = moaPreset;
            this.$useNowToken = l;
            this.$name = str;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            Continuation<Unit> anonymousClass5 = MoaCouncilViewModel.this.new AnonymousClass5(this.$scope, this.$preset, this.$useNowToken, this.$name, continuation);
            anonymousClass5.L$0 = obj;
            return anonymousClass5;
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            Object obj2;
            Object value;
            Object value2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    MoaCouncilViewModel moaCouncilViewModel = MoaCouncilViewModel.this;
                    MoaPreset moaPreset = this.$preset;
                    Long l = this.$useNowToken;
                    String str = this.$name;
                    Result.Companion companion = Result.Companion;
                    HermesConfigRepository.upsertMoaPreset$default(moaCouncilViewModel.repo, moaPreset, false, 2, null);
                    if (l != null) {
                        ProviderSwitchCoordinator providerSwitchCoordinator = ProviderSwitchCoordinator.INSTANCE;
                        long jLongValue = l.longValue();
                        MoaCouncilViewModel$save$5$1$1 moaCouncilViewModel$save$5$1$1 = new MoaCouncilViewModel$save$5$1$1(moaCouncilViewModel, str, null);
                        this.label = 1;
                        if (providerSwitchCoordinator.commitIfLatest(jLongValue, moaCouncilViewModel$save$5$1$1, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                obj2 = Result.constructor-impl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj2 = Result.constructor-impl(ResultKt.createFailure(th));
            }
            MoaCouncilViewModel moaCouncilViewModel2 = MoaCouncilViewModel.this;
            Throwable th2 = Result.exceptionOrNull-impl(obj2);
            if (th2 != null) {
                MutableStateFlow mutableStateFlow = moaCouncilViewModel2._state;
                do {
                    value2 = mutableStateFlow.getValue();
                } while (!mutableStateFlow.compareAndSet(value2, UiState.copy$default((UiState) value2, false, null, null, false, null, false, null, th2.getMessage(), null, 383, null)));
                return Unit.INSTANCE;
            }
            MutableStateFlow mutableStateFlow2 = MoaCouncilViewModel.this._state;
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, null, null, 447, null)));
            MoaCouncilViewModel.this.refresh(this.$scope);
            return Unit.INSTANCE;
        }
    }

    public final void dismissError() {
        Object value;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, UiState.copy$default((UiState) value, false, null, null, false, null, false, null, null, null, 383, null)));
    }

    public final void editorSetName(String v) {
        Object value;
        UiState uiStateCopy$default;
        Intrinsics.checkNotNullParameter(v, "v");
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            UiState uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor == null || (uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor, false, v, null, null, null, null, false, null, 185, null), null, null, 447, null)) == null) {
                uiStateCopy$default = uiState;
            }
        } while (!mutableStateFlow.compareAndSet(value, uiStateCopy$default));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void editorSetReference(int index, MoaSlot slot) {
        Object value;
        UiState uiStateCopy$default;
        Intrinsics.checkNotNullParameter(slot, "slot");
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            UiState uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor != null) {
                List mutableList = CollectionsKt.toMutableList(editor.getReferences());
                mutableList.set(index, slot);
                Unit unit = Unit.INSTANCE;
                uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor, false, null, null, mutableList, null, null, false, null, 119, null), null, null, 447, null);
                if (uiStateCopy$default == null) {
                    uiStateCopy$default = uiState;
                }
            }
        } while (!mutableStateFlow.compareAndSet(value, uiStateCopy$default));
    }

    public final void editorAddReference() {
        Object value;
        UiState uiState;
        Object next;
        String providerSlug;
        String defaultModel;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor != null) {
                Iterator<T> it = ((UiState) this._state.getValue()).getCandidates().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        if (((SlotCandidate) next).getConfigured()) {
                            break;
                        }
                    }
                }
                SlotCandidate slotCandidate = (SlotCandidate) next;
                List<MoaSlot> references = editor.getReferences();
                String str = BuildConfig.FLAVOR;
                if (slotCandidate == null || (providerSlug = slotCandidate.getProviderSlug()) == null) {
                    providerSlug = BuildConfig.FLAVOR;
                }
                if (slotCandidate != null && (defaultModel = slotCandidate.getDefaultModel()) != null) {
                    str = defaultModel;
                }
                UiState uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor, false, null, null, CollectionsKt.plus(references, new MoaSlot(providerSlug, str)), null, null, false, null, 247, null), null, null, 447, null);
                if (uiStateCopy$default != null) {
                    uiState = uiStateCopy$default;
                }
            }
        } while (!mutableStateFlow.compareAndSet(value, uiState));
    }

    public final void editorRemoveReference(int index) {
        Object value;
        UiState uiState;
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor != null) {
                List mutableList = CollectionsKt.toMutableList(editor.getReferences());
                mutableList.remove(index);
                Unit unit = Unit.INSTANCE;
                UiState uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor, false, null, null, mutableList, null, null, false, null, 119, null), null, null, 447, null);
                if (uiStateCopy$default != null) {
                    uiState = uiStateCopy$default;
                }
            }
        } while (!mutableStateFlow.compareAndSet(value, uiState));
    }

    public final void editorSetAggregator(MoaSlot slot) {
        Object value;
        UiState uiStateCopy$default;
        Intrinsics.checkNotNullParameter(slot, "slot");
        MutableStateFlow<UiState> mutableStateFlow = this._state;
        do {
            value = mutableStateFlow.getValue();
            UiState uiState = (UiState) value;
            EditorState editor = uiState.getEditor();
            if (editor == null || (uiStateCopy$default = UiState.copy$default(uiState, false, null, null, false, null, false, EditorState.copy$default(editor, false, null, null, null, slot, null, false, null, 239, null), null, null, 447, null)) == null) {
                uiStateCopy$default = uiState;
            }
        } while (!mutableStateFlow.compareAndSet(value, uiStateCopy$default));
    }
}
