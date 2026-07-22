package com.hermes.android.mesh;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.work.Constraints;
import androidx.work.CoroutineWorker;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.BootstrapManager;
import com.hermes.android.HermesPaths;
import com.hermes.android.handoff.HandoffController;
import com.hermes.android.handoff.HandoffImporter;
import com.hermes.android.mesh.MeshClient;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MeshPollWorker.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0002¨\u0006\u000e"}, d2 = {"Lcom/hermes/android/mesh/MeshPollWorker;", "Landroidx/work/CoroutineWorker;", "ctx", "Landroid/content/Context;", "params", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "maybeSyncBack", BuildConfig.FLAVOR, "Companion", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class MeshPollWorker extends CoroutineWorker {
    public static final int $stable = 0;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String UNIQUE = "mesh_poll";

    /* JADX INFO: renamed from: com.hermes.android.mesh.MeshPollWorker$doWork$1, reason: invalid class name */
    /* JADX INFO: compiled from: MeshPollWorker.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.mesh.MeshPollWorker", f = "MeshPollWorker.kt", i = {}, l = {29}, m = "doWork", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MeshPollWorker.this.doWork((Continuation) this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeshPollWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        Intrinsics.checkNotNullParameter(context, "ctx");
        Intrinsics.checkNotNullParameter(workerParameters, "params");
    }

    /* JADX INFO: renamed from: com.hermes.android.mesh.MeshPollWorker$doWork$2, reason: invalid class name */
    /* JADX INFO: compiled from: MeshPollWorker.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00070\u0001¢\u0006\u0002\b\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlin/jvm/internal/EnhancedNullability;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    @DebugMetadata(c = "com.hermes.android.mesh.MeshPollWorker$doWork$2", f = "MeshPollWorker.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MeshPollWorker.this.new AnonymousClass2(continuation);
        }

        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
        }

        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Context applicationContext = MeshPollWorker.this.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            MeshController meshController = new MeshController(applicationContext);
            if (!meshController.isPaired()) {
                return ListenableWorker.Result.success();
            }
            try {
                List<MeshClient.Result> listPoll = meshController.poll();
                if (!listPoll.isEmpty()) {
                    MeshPollWorker meshPollWorker = MeshPollWorker.this;
                    for (MeshClient.Result result : listPoll) {
                        MeshNotifier meshNotifier = MeshNotifier.INSTANCE;
                        Context applicationContext2 = meshPollWorker.getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                        meshNotifier.notifyResult(applicationContext2, result.getText());
                    }
                    List<MeshClient.Result> list = listPoll;
                    ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((MeshClient.Result) it.next()).getId());
                    }
                    meshController.ack(arrayList);
                }
                MeshPollWorker.this.maybeSyncBack();
                return ListenableWorker.Result.success();
            } catch (Exception unused) {
                return ListenableWorker.Result.retry();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
        AnonymousClass1 anonymousClass1;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object objWithContext = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objWithContext);
            CoroutineContext io = Dispatchers.getIO();
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(null);
            anonymousClass1.label = 1;
            objWithContext = BuildersKt.withContext(io, anonymousClass2, anonymousClass1);
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objWithContext);
        }
        Intrinsics.checkNotNullExpressionValue(objWithContext, "withContext(...)");
        return objWithContext;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void maybeSyncBack() {
        Object obj;
        HermesPaths hermesPaths = HermesPaths.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        File fileStateDb = hermesPaths.stateDb(applicationContext);
        if (fileStateDb.exists()) {
            SharedPreferences sharedPreferences = getApplicationContext().getSharedPreferences("mesh_sync", 0);
            long j = sharedPreferences.getLong("last_synced_mtime", 0L);
            long jLastModified = fileStateDb.lastModified();
            if (jLastModified <= j) {
                return;
            }
            try {
                Result.Companion companion = Result.Companion;
                MeshPollWorker meshPollWorker = this;
                Context applicationContext2 = getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                Context applicationContext3 = getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
                obj = Result.constructor-impl(new HandoffController(applicationContext2, new BootstrapManager(applicationContext3)).syncBack());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                obj = Result.constructor-impl(ResultKt.createFailure(th));
            }
            if (Result.isSuccess-impl(obj)) {
                HandoffImporter.Stats stats = (HandoffImporter.Stats) obj;
                sharedPreferences.edit().putLong("last_synced_mtime", jLastModified).apply();
                Log.i("MeshSync", "auto syncBack ok: +" + stats.getSessionsAdded() + "s/+" + stats.getMessagesAdded() + "m");
            }
            Throwable th2 = Result.exceptionOrNull-impl(obj);
            if (th2 != null) {
                Log.w("MeshSync", "auto syncBack failed: " + th2.getMessage(), th2);
            }
        }
    }

    /* JADX INFO: compiled from: MeshPollWorker.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/hermes/android/mesh/MeshPollWorker$Companion;", BuildConfig.FLAVOR, "<init>", "()V", "UNIQUE", BuildConfig.FLAVOR, "schedule", BuildConfig.FLAVOR, "context", "Landroid/content/Context;", "cancel", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void schedule(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            WorkManager.getInstance(context).enqueueUniquePeriodicWork(MeshPollWorker.UNIQUE, ExistingPeriodicWorkPolicy.KEEP, new PeriodicWorkRequest.Builder(MeshPollWorker.class, 15L, TimeUnit.MINUTES).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).build());
        }

        public final void cancel(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            WorkManager.getInstance(context).cancelUniqueWork(MeshPollWorker.UNIQUE);
        }
    }
}
