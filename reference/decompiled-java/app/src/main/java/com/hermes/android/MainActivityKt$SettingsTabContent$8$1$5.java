package com.hermes.android;

import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.hermes.android.handoff.HandoffController;
import com.hermes.android.handoff.HandoffImporter;
import com.journeyapps.barcodescanner.ScanIntentResult;
import com.journeyapps.barcodescanner.ScanOptions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$8$1$5 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ AppCompatActivity $activity;
    final /* synthetic */ HandoffController $handoffController;
    final /* synthetic */ MutableState<String> $handoffError$delegate;
    final /* synthetic */ ManagedActivityResultLauncher<ScanOptions, ScanIntentResult> $handoffScanLauncher;
    final /* synthetic */ MutableState<HandoffImporter.Stats> $handoffSyncResult$delegate;
    final /* synthetic */ MutableState<Boolean> $handoffSyncing$delegate;
    final /* synthetic */ LifecycleCoroutineScope $scope;

    MainActivityKt$SettingsTabContent$8$1$5(ManagedActivityResultLauncher<ScanOptions, ScanIntentResult> managedActivityResultLauncher, AppCompatActivity appCompatActivity, LifecycleCoroutineScope lifecycleCoroutineScope, HandoffController handoffController, MutableState<Boolean> mutableState, MutableState<HandoffImporter.Stats> mutableState2, MutableState<String> mutableState3) {
        this.$handoffScanLauncher = managedActivityResultLauncher;
        this.$activity = appCompatActivity;
        this.$scope = lifecycleCoroutineScope;
        this.$handoffController = handoffController;
        this.$handoffSyncing$delegate = mutableState;
        this.$handoffSyncResult$delegate = mutableState2;
        this.$handoffError$delegate = mutableState3;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v18 ??, still in use, count: 1, list:
          (r12v18 ?? I:java.lang.Object) from 0x00bf: INVOKE (r11v0 ?? I:androidx.compose.runtime.Composer), (r12v18 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5587)
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
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r12v18 ??, still in use, count: 1, list:
          (r12v18 ?? I:java.lang.Object) from 0x00bf: INVOKE (r11v0 ?? I:androidx.compose.runtime.Composer), (r12v18 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5587)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r11v0 ??
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
    public static final Unit invoke$lambda$2$lambda$1(ManagedActivityResultLauncher managedActivityResultLauncher, AppCompatActivity appCompatActivity) {
        ScanOptions scanOptions = new ScanOptions();
        scanOptions.setDesiredBarcodeFormats(new String[]{"QR_CODE"});
        scanOptions.setPrompt(appCompatActivity.getString(R.string.handoff_scan_prompt));
        scanOptions.setBeepEnabled(false);
        scanOptions.setOrientationLocked(false);
        managedActivityResultLauncher.launch(scanOptions);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$4$lambda$3(LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, HandoffController handoffController, MutableState mutableState2, AppCompatActivity appCompatActivity, MutableState mutableState3) {
        if (MainActivityKt.SettingsTabContent$lambda$278(mutableState)) {
            return Unit.INSTANCE;
        }
        MainActivityKt.SettingsTabContent$lambda$279(mutableState, true);
        BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$8$1$5$2$1$1(handoffController, mutableState, mutableState2, appCompatActivity, mutableState3, null), 2, (Object) null);
        return Unit.INSTANCE;
    }
}
