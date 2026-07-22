package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.google.android.play.core.splitinstall.SplitInstallManager;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$9 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ MutableState<String> $apiKeyDialogInput$delegate;
    final /* synthetic */ MutableState<AiProvider> $apiKeyDialogProvider$delegate;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ SnapshotStateMap<String, Boolean> $labsEnabled;
    final /* synthetic */ MutableState<String> $localLlmModuleError$delegate;
    final /* synthetic */ MutableState<Integer> $localLlmModuleProgress$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;
    final /* synthetic */ MutableState<Boolean> $showLocalLlmScreen$delegate;
    final /* synthetic */ MutableState<Boolean> $showMoaScreen$delegate;
    final /* synthetic */ SplitInstallManager $splitInstallManager;

    MainActivityKt$SettingsTabContent$8$1$9(LifecycleCoroutineScope lifecycleCoroutineScope, SplitInstallManager splitInstallManager, AppCompatActivity appCompatActivity, HermesConfigRepository hermesConfigRepository, SnapshotStateMap<String, Boolean> snapshotStateMap, MutableState<Boolean> mutableState, MutableState<Boolean> mutableState2, MutableState<String> mutableState3, MutableState<Integer> mutableState4, MutableState<String> mutableState5, MutableState<AiProvider> mutableState6) {
        this.$scope = lifecycleCoroutineScope;
        this.$splitInstallManager = splitInstallManager;
        this.$activity = appCompatActivity;
        this.$hermesRepo = hermesConfigRepository;
        this.$labsEnabled = snapshotStateMap;
        this.$showMoaScreen$delegate = mutableState;
        this.$showLocalLlmScreen$delegate = mutableState2;
        this.$localLlmModuleError$delegate = mutableState3;
        this.$localLlmModuleProgress$delegate = mutableState4;
        this.$apiKeyDialogInput$delegate = mutableState5;
        this.$apiKeyDialogProvider$delegate = mutableState6;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r10v11 ??, still in use, count: 1, list:
          (r10v11 ?? I:java.lang.Object) from 0x013b: INVOKE (r30v0 ?? I:androidx.compose.runtime.Composer), (r10v11 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5585)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    public final void invoke(
    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r10v11 ??, still in use, count: 1, list:
          (r10v11 ?? I:java.lang.Object) from 0x013b: INVOKE (r30v0 ?? I:androidx.compose.runtime.Composer), (r10v11 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5585)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r30v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:224)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:169)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:407)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:337)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:303)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$3$lambda$2$lambda$1(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, SplitInstallManager splitInstallManager, AppCompatActivity appCompatActivity, HermesConfigRepository hermesConfigRepository, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4, MutableState mutableState5, MutableState mutableState6, AiProvider aiProvider) {
        Intrinsics.checkNotNullParameter(aiProvider, "provider");
        long jOnSelected = ProviderSwitchCoordinator.INSTANCE.onSelected();
        if (Intrinsics.areEqual(aiProvider.getId(), "moa")) {
            MainActivityKt.SettingsTabContent$lambda$199(mutableState, true);
        } else if (Intrinsics.areEqual(aiProvider.getId(), LocalLlmModuleBridge.PROVIDER_ID)) {
            BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$9$1$1$1$1(splitInstallManager, appCompatActivity, jOnSelected, hermesConfigRepository, mutableState2, mutableState3, mutableState4, null), 2, (Object) null);
        } else {
            mutableState5.setValue("");
            mutableState6.setValue(aiProvider);
        }
        return Unit.INSTANCE;
    }
}
