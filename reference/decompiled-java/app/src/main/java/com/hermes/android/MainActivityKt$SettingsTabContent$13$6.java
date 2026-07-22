package com.hermes.android;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.lifecycle.LifecycleCoroutineScope;
import com.hermes.android.data.AiProvider;
import com.hermes.android.data.HermesConfigRepository;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$SettingsTabContent$13$6 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ MutableState<String> $apiKeyDialogInput$delegate;
    final /* synthetic */ MutableState<AiProvider> $apiKeyDialogProvider$delegate;
    final /* synthetic */ MutableState<String> $baseUrlInput$delegate;
    final /* synthetic */ HermesConfigRepository.CustomProviderConfig $customExisting;
    final /* synthetic */ HermesConfigRepository $hermesRepo;
    final /* synthetic */ MutableState<String> $modelIdInput$delegate;
    final /* synthetic */ AiProvider $provider;
    final /* synthetic */ LifecycleCoroutineScope $scope;

    MainActivityKt$SettingsTabContent$13$6(AiProvider aiProvider, HermesConfigRepository hermesConfigRepository, LifecycleCoroutineScope lifecycleCoroutineScope, HermesConfigRepository.CustomProviderConfig customProviderConfig, MutableState<String> mutableState, MutableState<String> mutableState2, MutableState<String> mutableState3, MutableState<AiProvider> mutableState4) {
        this.$provider = aiProvider;
        this.$hermesRepo = hermesConfigRepository;
        this.$scope = lifecycleCoroutineScope;
        this.$customExisting = customProviderConfig;
        this.$apiKeyDialogInput$delegate = mutableState;
        this.$modelIdInput$delegate = mutableState2;
        this.$baseUrlInput$delegate = mutableState3;
        this.$apiKeyDialogProvider$delegate = mutableState4;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ConstructorVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v7 ??, still in use, count: 1, list:
          (r1v7 ?? I:java.lang.Object) from 0x0069: INVOKE (r15v0 ?? I:androidx.compose.runtime.Composer), (r1v7 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5581)
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
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v7 ??, still in use, count: 1, list:
          (r1v7 ?? I:java.lang.Object) from 0x0069: INVOKE (r15v0 ?? I:androidx.compose.runtime.Composer), (r1v7 ?? I:java.lang.Object) INTERFACE call: androidx.compose.runtime.Composer.updateRememberedValue(java.lang.Object):void A[MD:(java.lang.Object):void (m)] (LINE:5581)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
        	at jadx.core.utils.InsnRemover.perform(InsnRemover.java:73)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:59)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r15v0 ??
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
    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Unit invoke$lambda$1$lambda$0(AiProvider aiProvider, HermesConfigRepository hermesConfigRepository, LifecycleCoroutineScope lifecycleCoroutineScope, MutableState mutableState, MutableState mutableState2, HermesConfigRepository.CustomProviderConfig customProviderConfig, MutableState mutableState3, MutableState mutableState4) {
        boolean requiresKey = aiProvider.getRequiresKey();
        boolean zIsBlank = StringsKt.isBlank(MainActivityKt.SettingsTabContent$lambda$241(mutableState));
        boolean z = !zIsBlank;
        if (aiProvider.getAllowsCustomModel() && !StringsKt.isBlank(MainActivityKt.SettingsTabContent$lambda$330$lambda$322(mutableState2))) {
            boolean z2 = !requiresKey || hermesConfigRepository.hasApiKey(aiProvider.getEnvVar());
            if (zIsBlank || !requiresKey || z2) {
                BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$13$6$1$1$1(z, aiProvider, hermesConfigRepository, customProviderConfig, ProviderSwitchCoordinator.INSTANCE.onSelected(), mutableState, mutableState3, mutableState2, null), 2, (Object) null);
            }
            mutableState4.setValue(null);
            return Unit.INSTANCE;
        }
        if (zIsBlank) {
            BuildersKt.launch$default(lifecycleCoroutineScope, Dispatchers.getIO(), (CoroutineStart) null, new MainActivityKt$SettingsTabContent$13$6$1$1$1(z, aiProvider, hermesConfigRepository, customProviderConfig, ProviderSwitchCoordinator.INSTANCE.onSelected(), mutableState, mutableState3, mutableState2, null), 2, (Object) null);
        }
        mutableState4.setValue(null);
        return Unit.INSTANCE;
    }
}
