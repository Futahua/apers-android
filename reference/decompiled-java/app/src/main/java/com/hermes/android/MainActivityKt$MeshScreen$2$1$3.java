package com.hermes.android;

import android.content.ClipData;
import android.content.ClipboardManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MainActivity.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class MainActivityKt$MeshScreen$2$1$3 implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ AppCompatActivity $context;
    final /* synthetic */ MutableState<String> $status$delegate;

    MainActivityKt$MeshScreen$2$1$3(AppCompatActivity appCompatActivity, MutableState<String> mutableState) {
        this.$context = appCompatActivity;
        this.$status$delegate = mutableState;
    }

    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        invoke((Composer) obj, ((Number) obj2).intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        if ((i & 3) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1660774507, i, -1, "com.hermes.android.MeshScreen.<anonymous>.<anonymous>.<anonymous> (MainActivity.kt:2182)");
            }
            Modifier modifier = PaddingKt.padding-3ABfNKs(Modifier.INSTANCE, Dp.m3807constructorimpl(12));
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            final AppCompatActivity appCompatActivity = this.$context;
            final MutableState<String> mutableState = this.$status$delegate;
            ComposerKt.sourceInformationMarkerStart(composer, 693286680, "CC(Row)P(2,1,3)99@5018L58,100@5081L130:Row.kt#2w3rfo");
            MeasurePolicy measurePolicyRowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, composer, 48);
            ComposerKt.sourceInformationMarkerStart(composer, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composer, modifier);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            ComposerKt.sourceInformationMarkerStart(composer, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            Composer composerM661constructorimpl = Updater.m661constructorimpl(composer);
            Updater.m668setimpl(composerM661constructorimpl, measurePolicyRowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m668setimpl(composerM661constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (composerM661constructorimpl.getInserting() || !Intrinsics.areEqual(composerM661constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composerM661constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composerM661constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m668setimpl(composerM661constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            ComposerKt.sourceInformationMarkerStart(composer, -407840262, "C101@5126L9:Row.kt#2w3rfo");
            RowScope rowScope = RowScopeInstance.INSTANCE;
            TextKt.Text--4IGK_g("python -m handoff.mesh_broker", RowScope.weight$default(rowScope, Modifier.INSTANCE, 1.0f, false, 2, (Object) null), ColorKt.Color(4286436348L), TextUnitKt.getSp(13), (FontStyle) null, (FontWeight) null, FontFamily.INSTANCE.getMonospace(), 0L, (TextDecoration) null, (TextAlign) null, 0L, 0, false, 0, 0, (Function1) null, (TextStyle) null, composer, 3462, 0, 130992);
            final String strStringResource = StringResources_androidKt.stringResource(R.string.mesh_copied, composer, 0);
            composer.startReplaceGroup(-1348911040);
            boolean zChangedInstance = composer.changedInstance(appCompatActivity) | composer.changed(strStringResource);
            Object objRememberedValue = composer.rememberedValue();
            if (zChangedInstance || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                objRememberedValue = new Function0() { // from class: com.hermes.android.MainActivityKt$MeshScreen$2$1$3$$ExternalSyntheticLambda0
                    public final Object invoke() {
                        return MainActivityKt$MeshScreen$2$1$3.invoke$lambda$2$lambda$1$lambda$0(appCompatActivity, strStringResource, mutableState);
                    }
                };
                composer.updateRememberedValue(objRememberedValue);
            }
            composer.endReplaceGroup();
            IconButtonKt.IconButton((Function0) objRememberedValue, (Modifier) null, false, (IconButtonColors) null, (MutableInteractionSource) null, ComposableSingletons$MainActivityKt.INSTANCE.m4251getLambda22$app_release(), composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 30);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endNode();
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit invoke$lambda$2$lambda$1$lambda$0(AppCompatActivity appCompatActivity, String str, MutableState mutableState) {
        Object systemService = appCompatActivity.getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("cmd", "python -m handoff.mesh_broker"));
        mutableState.setValue(str);
        return Unit.INSTANCE;
    }
}
