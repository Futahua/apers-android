package com.hermes.android;

import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.hermes.android.mesh.MeshClient;
import com.hermes.android.mesh.MeshController;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$1$1", f = "MainActivity.kt", i = {}, l = {2101, 2108, 2113}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$MeshScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MeshController $controller;
    final /* synthetic */ MutableState<Boolean> $online$delegate;
    final /* synthetic */ MutableState<Boolean> $paired$delegate;
    final /* synthetic */ SnapshotStateList<String> $pending;
    final /* synthetic */ SnapshotStateList<MeshClient.Result> $results;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$MeshScreen$1$1(AppCompatActivity appCompatActivity, SnapshotStateList<MeshClient.Result> snapshotStateList, SnapshotStateList<String> snapshotStateList2, MutableState<Boolean> mutableState, MeshController meshController, MutableState<Boolean> mutableState2, Continuation<? super MainActivityKt$MeshScreen$1$1> continuation) {
        super(2, continuation);
        this.$context = appCompatActivity;
        this.$results = snapshotStateList;
        this.$pending = snapshotStateList2;
        this.$paired$delegate = mutableState;
        this.$controller = meshController;
        this.$online$delegate = mutableState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$MeshScreen$1$1(this.$context, this.$results, this.$pending, this.$paired$delegate, this.$controller, this.$online$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044 A[Catch: Exception -> 0x0115, TRY_ENTER, TryCatch #0 {Exception -> 0x0115, blocks: (B:18:0x0044, B:21:0x005f, B:22:0x0075, B:24:0x007b, B:26:0x0089, B:35:0x00b2, B:29:0x0093, B:30:0x0097, B:32:0x009d, B:36:0x00b6, B:38:0x00c1, B:40:0x00d3, B:41:0x00d8, B:42:0x00e1, B:44:0x00e7, B:45:0x00fa, B:10:0x001f, B:11:0x0024), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b A[Catch: Exception -> 0x0115, TryCatch #0 {Exception -> 0x0115, blocks: (B:18:0x0044, B:21:0x005f, B:22:0x0075, B:24:0x007b, B:26:0x0089, B:35:0x00b2, B:29:0x0093, B:30:0x0097, B:32:0x009d, B:36:0x00b6, B:38:0x00c1, B:40:0x00d3, B:41:0x00d8, B:42:0x00e1, B:44:0x00e7, B:45:0x00fa, B:10:0x001f, B:11:0x0024), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c1 A[Catch: Exception -> 0x0115, TryCatch #0 {Exception -> 0x0115, blocks: (B:18:0x0044, B:21:0x005f, B:22:0x0075, B:24:0x007b, B:26:0x0089, B:35:0x00b2, B:29:0x0093, B:30:0x0097, B:32:0x009d, B:36:0x00b6, B:38:0x00c1, B:40:0x00d3, B:41:0x00d8, B:42:0x00e1, B:44:0x00e7, B:45:0x00fa, B:10:0x001f, B:11:0x0024), top: B:54:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0127 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0128  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0125 -> B:16:0x003c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hermes.android.MainActivityKt$MeshScreen$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$MeshScreen$1$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$MeshScreen$1$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ MeshController $controller;
        final /* synthetic */ List<MeshClient.Result> $newOnes;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(MeshController meshController, List<MeshClient.Result> list, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$controller = meshController;
            this.$newOnes = list;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$controller, this.$newOnes, continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MeshController meshController = this.$controller;
            List<MeshClient.Result> list = this.$newOnes;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((MeshClient.Result) it.next()).getId());
            }
            meshController.ack(arrayList);
            return Unit.INSTANCE;
        }
    }
}
