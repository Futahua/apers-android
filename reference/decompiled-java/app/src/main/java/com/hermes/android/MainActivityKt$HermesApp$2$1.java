package com.hermes.android;

import android.util.Log;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.MutableState;
import com.hermes.android.BootstrapManager;
import com.hermes.android.DpkgHealPolicy;
import com.hermes.android.MainActivityKt$HermesApp$2$1;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$2$1", f = "MainActivity.kt", i = {}, l = {284, 292, 300, 303, 324, 346}, m = "invokeSuspend", n = {}, s = {})
final class MainActivityKt$HermesApp$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BootstrapManager $bootstrapManager;
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<BootstrapManager.Progress> $installProgress$delegate;
    final /* synthetic */ MutableState<AppPhase> $phase$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MainActivityKt$HermesApp$2$1(BootstrapManager bootstrapManager, AppCompatActivity appCompatActivity, MutableState<AppPhase> mutableState, MutableState<BootstrapManager.Progress> mutableState2, Continuation<? super MainActivityKt$HermesApp$2$1> continuation) {
        super(2, continuation);
        this.$bootstrapManager = bootstrapManager;
        this.$context = appCompatActivity;
        this.$phase$delegate = mutableState;
        this.$installProgress$delegate = mutableState2;
    }

    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MainActivityKt$HermesApp$2$1(this.$bootstrapManager, this.$context, this.$phase$delegate, this.$installProgress$delegate, continuation);
    }

    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return create(coroutineScope, continuation).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0079 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        boolean zBooleanValue;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                if (!this.$bootstrapManager.isInstalled() || !this.$bootstrapManager.isHermesInstalled()) {
                    MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.ONBOARDING);
                    return Unit.INSTANCE;
                }
                this.label = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass1(this.$bootstrapManager, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.label = 2;
                if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(this.$bootstrapManager, null), (Continuation) this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.label = 3;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$needsUpgrade$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (((Boolean) obj).booleanValue()) {
                    MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.INSTALLING);
                    BootstrapManager bootstrapManager = this.$bootstrapManager;
                    final MutableState<BootstrapManager.Progress> mutableState = this.$installProgress$delegate;
                    this.label = 4;
                    obj = bootstrapManager.upgradeBundleFromApk(new Function1() { // from class: com.hermes.android.MainActivityKt$HermesApp$2$1$$ExternalSyntheticLambda0
                        public final Object invoke(Object obj2) {
                            return MainActivityKt$HermesApp$2$1.invokeSuspend$lambda$0(mutableState, (BootstrapManager.Progress) obj2);
                        }
                    }, (Continuation) this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    zBooleanValue = ((Boolean) obj).booleanValue();
                    MainActivityKt.HermesApp$lambda$6(this.$installProgress$delegate, null);
                    if (!zBooleanValue) {
                        Log.w("MainActivity", "Bundle auto-upgrade failed; will retry next launch");
                    }
                }
                this.label = 5;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$migrationPending$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                if (((Boolean) obj).booleanValue()) {
                    TerminalSessionManager processInstance = TerminalSessionManager.INSTANCE.getProcessInstance();
                    if (processInstance == null || !processInstance.hasRunningSession()) {
                        MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.INSTALLING);
                        MutableState<BootstrapManager.Progress> mutableState2 = this.$installProgress$delegate;
                        String string = this.$context.getString(R.string.settings_updating);
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        String string2 = this.$context.getString(R.string.settings_please_wait);
                        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                        MainActivityKt.HermesApp$lambda$6(mutableState2, new BootstrapManager.Progress(1, 1, string, string2));
                        this.label = 6;
                        if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass3(this.$bootstrapManager, null), (Continuation) this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        MainActivityKt.HermesApp$lambda$6(this.$installProgress$delegate, null);
                    } else {
                        Boxing.boxInt(Log.i("MainActivity", "Startup maintenance deferred: PTY session running (retry next cold start)"));
                    }
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                this.label = 2;
                if (BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(this.$bootstrapManager, null), (Continuation) this) == coroutine_suspended) {
                }
                this.label = 3;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$needsUpgrade$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                this.label = 5;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$migrationPending$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                this.label = 3;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$needsUpgrade$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                this.label = 5;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$migrationPending$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                if (((Boolean) obj).booleanValue()) {
                }
                this.label = 5;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$migrationPending$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                zBooleanValue = ((Boolean) obj).booleanValue();
                MainActivityKt.HermesApp$lambda$6(this.$installProgress$delegate, null);
                if (!zBooleanValue) {
                }
                this.label = 5;
                obj = BuildersKt.withContext(Dispatchers.getIO(), new MainActivityKt$HermesApp$2$1$migrationPending$1(this.$bootstrapManager, null), (Continuation) this);
                if (obj == coroutine_suspended) {
                }
                if (((Boolean) obj).booleanValue()) {
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 5:
                ResultKt.throwOnFailure(obj);
                if (((Boolean) obj).booleanValue()) {
                }
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj);
                MainActivityKt.HermesApp$lambda$6(this.$installProgress$delegate, null);
                MainActivityKt.HermesApp$lambda$3(this.$phase$delegate, AppPhase.READY);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$2$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$2$1$1", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(BootstrapManager bootstrapManager, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bootstrapManager = bootstrapManager;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bootstrapManager, continuation);
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
            this.$bootstrapManager.recoverInterruptedUpgrade();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$2$1$2, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$2$1$2", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(BootstrapManager bootstrapManager, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$bootstrapManager = bootstrapManager;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$bootstrapManager, continuation);
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
            this.$bootstrapManager.ensureOpenSslCurrent();
            this.$bootstrapManager.ensureRuntimePatchesCurrent();
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invokeSuspend$lambda$0(MutableState mutableState, BootstrapManager.Progress progress) {
        MainActivityKt.HermesApp$lambda$6(mutableState, progress);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$2$1$3, reason: invalid class name */
    /* JADX INFO: compiled from: MainActivity.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "com.hermes.android.MainActivityKt$HermesApp$2$1$3", f = "MainActivity.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ BootstrapManager $bootstrapManager;
        int label;

        /* JADX INFO: renamed from: com.hermes.android.MainActivityKt$HermesApp$2$1$3$WhenMappings */
        /* JADX INFO: compiled from: MainActivity.kt */
        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[DpkgHealPolicy.MaintenanceStep.values().length];
                try {
                    iArr[DpkgHealPolicy.MaintenanceStep.SQLITE_APT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[DpkgHealPolicy.MaintenanceStep.CORE_DEPS_PIP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(BootstrapManager bootstrapManager, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$bootstrapManager = bootstrapManager;
        }

        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$bootstrapManager, continuation);
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
            DpkgHealPolicy.RepairResult repairResultEnsureDpkgRepaired = this.$bootstrapManager.ensureDpkgRepaired();
            List<DpkgHealPolicy.MaintenanceStep> listMaintenanceSteps = DpkgHealPolicy.INSTANCE.maintenanceSteps(repairResultEnsureDpkgRepaired, this.$bootstrapManager.sqliteRepairPending(), this.$bootstrapManager.coreDepsMigrationPending());
            if (repairResultEnsureDpkgRepaired == DpkgHealPolicy.RepairResult.DEFERRED) {
                Log.i("MainActivity", "dpkg repair deferred; sqlite/core-deps maintenance skipped this launch");
            }
            DpkgHealPolicy dpkgHealPolicy = DpkgHealPolicy.INSTANCE;
            final BootstrapManager bootstrapManager = this.$bootstrapManager;
            if (!dpkgHealPolicy.runMaintenance(listMaintenanceSteps, new Function1() { // from class: com.hermes.android.MainActivityKt$HermesApp$2$1$3$$ExternalSyntheticLambda0
                public final Object invoke(Object obj2) {
                    return Boolean.valueOf(MainActivityKt$HermesApp$2$1.AnonymousClass3.invokeSuspend$lambda$0(bootstrapManager, (DpkgHealPolicy.MaintenanceStep) obj2));
                }
            })) {
                Log.w("MainActivity", "startup maintenance aborted at a failed step; unconsumed markers retried next launch (session-open ensureSqlite gate stays authoritative)");
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: Thrown type has an unknown type hierarchy: kotlin.NoWhenBranchMatchedException */
        public static final boolean invokeSuspend$lambda$0(BootstrapManager bootstrapManager, DpkgHealPolicy.MaintenanceStep maintenanceStep) throws NoWhenBranchMatchedException, InterruptedException {
            int i = WhenMappings.$EnumSwitchMapping$0[maintenanceStep.ordinal()];
            if (i == 1) {
                return bootstrapManager.ensureSqlite();
            }
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            bootstrapManager.ensureCoreDepsCurrent();
            return true;
        }
    }
}
