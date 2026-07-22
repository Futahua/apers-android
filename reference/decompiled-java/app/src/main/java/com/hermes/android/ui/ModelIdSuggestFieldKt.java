package com.hermes.android.ui;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotMutationPolicy;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.PopupProperties;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.goterl.lazysodium.interfaces.PwHash;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ModelIdSuggestField.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\u001a\u0081\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00072\u0013\u0010\b\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t¢\u0006\u0002\b\n2\u0015\b\u0002\u0010\u000b\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t¢\u0006\u0002\b\n2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0007¢\u0006\u0002\u0010\u0012¨\u0006\u0013²\u0006\n\u0010\u0014\u001a\u00020\u0015X\u008a\u008e\u0002"}, d2 = {"ModelIdSuggestField", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.VALUE, BuildConfig.FLAVOR, "onValueChange", "Lkotlin/Function1;", "suggestions", BuildConfig.FLAVOR, "label", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "placeholder", "modifier", "Landroidx/compose/ui/Modifier;", "shape", "Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/TextFieldColors;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)V", "app_release", "expanded", BuildConfig.FLAVOR}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class ModelIdSuggestFieldKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ModelIdSuggestField$lambda$13(String str, Function1 function1, List list, Function2 function2, Function2 function22, Modifier modifier, Shape shape, TextFieldColors textFieldColors, int i, int i2, Composer composer, int i3) {
        ModelIdSuggestField(str, function1, list, function2, function22, modifier, shape, textFieldColors, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0395  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:193:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0110  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void ModelIdSuggestField(final String str, final Function1<? super String, Unit> function1, final List<String> list, final Function2<? super Composer, ? super Integer, Unit> function2, Function2<? super Composer, ? super Integer, Unit> function22, Modifier modifier, Shape shape, TextFieldColors textFieldColors, Composer composer, final int i, final int i2) {
        int i3;
        Function2<? super Composer, ? super Integer, Unit> function23;
        int i4;
        Modifier modifier2;
        Shape shape2;
        TextFieldColors textFieldColors2;
        TextFieldColors textFieldColorsColors;
        Object objRememberedValue;
        final MutableState mutableState;
        boolean zChanged;
        Object objRememberedValue2;
        String string;
        ArrayList arrayList;
        List<String> list2;
        int currentCompositeKeyHash;
        Composer composer2;
        Function2 setCompositeKeyHash;
        Object objRememberedValue3;
        boolean z;
        Function2 function2RememberComposableLambda;
        boolean zChangedInstance;
        Object objRememberedValue4;
        Object objRememberedValue5;
        final MutableState mutableState2;
        Composer composer3;
        final Function2<? super Composer, ? super Integer, Unit> function24;
        final Shape shape3;
        final TextFieldColors textFieldColors3;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Intrinsics.checkNotNullParameter(str, AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Intrinsics.checkNotNullParameter(function1, "onValueChange");
        Intrinsics.checkNotNullParameter(list, "suggestions");
        Composer composerStartRestartGroup = composer.startRestartGroup(457266127);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function1) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(list) ? 256 : 128;
        }
        if ((i2 & 8) != 0) {
            i3 |= 3072;
        } else if ((i & 3072) == 0) {
            i3 |= composerStartRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        int i5 = i2 & 16;
        if (i5 != 0) {
            i3 |= 24576;
        } else {
            if ((i & 24576) == 0) {
                function23 = function22;
                i3 |= composerStartRestartGroup.changedInstance(function23) ? 16384 : PwHash.ARGON2ID_MEMLIMIT_MIN;
            }
            i4 = i2 & 32;
            if (i4 != 0) {
                if ((196608 & i) == 0) {
                    modifier2 = modifier;
                    i3 |= composerStartRestartGroup.changed(modifier2) ? 131072 : 65536;
                }
                if ((i & 1572864) == 0) {
                    shape2 = shape;
                    i3 |= ((i2 & 64) == 0 && composerStartRestartGroup.changed(shape2)) ? 1048576 : 524288;
                } else {
                    shape2 = shape;
                }
                if ((i & 12582912) == 0) {
                    if ((i2 & 128) == 0) {
                        textFieldColors2 = textFieldColors;
                        int i6 = composerStartRestartGroup.changed(textFieldColors2) ? 8388608 : 4194304;
                        i3 |= i6;
                    } else {
                        textFieldColors2 = textFieldColors;
                    }
                    i3 |= i6;
                } else {
                    textFieldColors2 = textFieldColors;
                }
                if ((i3 & 4793491) != 4793490 || !composerStartRestartGroup.getSkipping()) {
                    composerStartRestartGroup.startDefaults();
                    if ((i & 1) == 0 && !composerStartRestartGroup.getDefaultsInvalid()) {
                        composerStartRestartGroup.skipToGroupEnd();
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                        }
                        if ((i2 & 128) != 0) {
                            i3 &= -29360129;
                        }
                    } else {
                        if (i5 != 0) {
                            function23 = null;
                        }
                        if (i4 != 0) {
                            modifier2 = (Modifier) Modifier.Companion;
                        }
                        if ((i2 & 64) != 0) {
                            i3 &= -3670017;
                            shape2 = OutlinedTextFieldDefaults.INSTANCE.getShape(composerStartRestartGroup, 6);
                        }
                        if ((i2 & 128) == 0) {
                            i3 &= -29360129;
                            textFieldColorsColors = OutlinedTextFieldDefaults.INSTANCE.colors(composerStartRestartGroup, 6);
                        }
                        Shape shape4 = shape2;
                        Function2<? super Composer, ? super Integer, Unit> function25 = function23;
                        composerStartRestartGroup.endDefaults();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(457266127, i3, -1, "com.hermes.android.ui.ModelIdSuggestField (ModelIdSuggestField.kt:48)");
                        }
                        composerStartRestartGroup.startReplaceGroup(-788558020);
                        objRememberedValue = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue == Composer.Companion.getEmpty()) {
                            objRememberedValue = SnapshotStateKt.mutableStateOf$default(false, (SnapshotMutationPolicy) null, 2, (Object) null);
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                        }
                        mutableState = (MutableState) objRememberedValue;
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.startReplaceGroup(-788556024);
                        int i7 = i3 & 14;
                        zChanged = (i7 == 4) | composerStartRestartGroup.changed(list);
                        objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                        if (zChanged || objRememberedValue2 == Composer.Companion.getEmpty()) {
                            string = StringsKt.trim(str).toString();
                            if (string.length() != 0) {
                                arrayList = list;
                            } else {
                                ArrayList arrayList2 = new ArrayList();
                                for (Object obj : list) {
                                    if (StringsKt.contains((String) obj, string, true)) {
                                        arrayList2.add(obj);
                                    }
                                }
                                arrayList = arrayList2;
                            }
                            list2 = arrayList;
                            if (list2.isEmpty()) {
                                list2 = list;
                            }
                            objRememberedValue2 = list2;
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        }
                        List list3 = (List) objRememberedValue2;
                        composerStartRestartGroup.endReplaceGroup();
                        int i8 = i3 >> 15;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
                        Function0 constructor = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (!composerStartRestartGroup.getInserting()) {
                            composerStartRestartGroup.createNode(constructor);
                        } else {
                            composerStartRestartGroup.useNode();
                        }
                        composer2 = Updater.constructor-impl(composerStartRestartGroup);
                        Updater.set-impl(composer2, measurePolicyMaybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer2, currentCompositionLocalMap, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (!composer2.getInserting() || !Intrinsics.areEqual(composer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                            composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                        }
                        Updater.set-impl(composer2, modifierMaterializeModifier, ComposeUiNode.Companion.getSetModifier());
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                        BoxScope boxScope = BoxScopeInstance.INSTANCE;
                        Modifier modifierFillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                        composerStartRestartGroup.startReplaceGroup(1551194624);
                        objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            objRememberedValue3 = new Function1() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$$ExternalSyntheticLambda0
                                public final Object invoke(Object obj2) {
                                    return ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$12$lambda$7$lambda$6(mutableState, (FocusState) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue3);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        Modifier modifierOnFocusChanged = FocusChangedModifierKt.onFocusChanged(modifierFillMaxWidth$default, (Function1) objRememberedValue3);
                        composerStartRestartGroup.startReplaceGroup(1551198817);
                        if (list.isEmpty()) {
                            z = true;
                            function2RememberComposableLambda = ComposableLambdaKt.rememberComposableLambda(-106926629, true, new ModelIdSuggestFieldKt$ModelIdSuggestField$1$2(mutableState), composerStartRestartGroup, 54);
                        } else {
                            function2RememberComposableLambda = null;
                            z = true;
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composerStartRestartGroup.startReplaceGroup(1551185214);
                        zChangedInstance = composerStartRestartGroup.changedInstance(list) | ((i3 & 112) != 32 ? z : false);
                        objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                        if (!zChangedInstance || objRememberedValue4 == Composer.Companion.getEmpty()) {
                            objRememberedValue4 = new Function1() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$$ExternalSyntheticLambda1
                                public final Object invoke(Object obj2) {
                                    return ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$12$lambda$9$lambda$8(function1, list, mutableState, (String) obj2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        int i9 = i3 << 9;
                        Modifier modifier4 = modifier2;
                        OutlinedTextFieldKt.OutlinedTextField(str, (Function1) objRememberedValue4, modifierOnFocusChanged, false, false, (TextStyle) null, function2, function25, (Function2) null, function2RememberComposableLambda, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, shape4, textFieldColorsColors, composerStartRestartGroup, (3670016 & i9) | i7 | (i9 & 29360128), 12582912, i8 & 1008, 1965368);
                        boolean z2 = (ModelIdSuggestField$lambda$1(mutableState) || list3.isEmpty()) ? false : true;
                        PopupProperties popupProperties = new PopupProperties(false, false, false, false, 14, (DefaultConstructorMarker) null);
                        Modifier modifier5 = SizeKt.heightIn-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(280), 1, (Object) null);
                        composerStartRestartGroup.startReplaceGroup(1551210957);
                        objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                        if (objRememberedValue5 != Composer.Companion.getEmpty()) {
                            mutableState2 = mutableState;
                            objRememberedValue5 = new Function0() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$$ExternalSyntheticLambda2
                                public final Object invoke() {
                                    return ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$12$lambda$11$lambda$10(mutableState2);
                                }
                            };
                            composerStartRestartGroup.updateRememberedValue(objRememberedValue5);
                        } else {
                            mutableState2 = mutableState;
                        }
                        composerStartRestartGroup.endReplaceGroup();
                        composer3 = composerStartRestartGroup;
                        AndroidMenu_androidKt.DropdownMenu-IlH_yew(z2, (Function0) objRememberedValue5, modifier5, 0L, (ScrollState) null, popupProperties, (Shape) null, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(-585835270, true, new ModelIdSuggestFieldKt$ModelIdSuggestField$1$5(list3, function1, mutableState2), composerStartRestartGroup, 54), composer3, 197040, 48, 2008);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        composer3.endNode();
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        ComposerKt.sourceInformationMarkerEnd(composer3);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        function24 = function25;
                        shape3 = shape4;
                        textFieldColors3 = textFieldColorsColors;
                        modifier3 = modifier4;
                    }
                    textFieldColorsColors = textFieldColors2;
                    Shape shape42 = shape2;
                    Function2<? super Composer, ? super Integer, Unit> function252 = function23;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    composerStartRestartGroup.startReplaceGroup(-788558020);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                    }
                    mutableState = (MutableState) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.startReplaceGroup(-788556024);
                    int i72 = i3 & 14;
                    zChanged = (i72 == 4) | composerStartRestartGroup.changed(list);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                        string = StringsKt.trim(str).toString();
                        if (string.length() != 0) {
                        }
                        list2 = arrayList;
                        if (list2.isEmpty()) {
                        }
                        objRememberedValue2 = list2;
                        composerStartRestartGroup.updateRememberedValue(objRememberedValue2);
                        List list32 = (List) objRememberedValue2;
                        composerStartRestartGroup.endReplaceGroup();
                        int i82 = i3 >> 15;
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, 733328855, "CC(Box)P(2,1,3)72@3384L130:Box.kt#2w3rfo");
                        MeasurePolicy measurePolicyMaybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.getTopStart(), false);
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
                        currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
                        CompositionLocalMap currentCompositionLocalMap2 = composerStartRestartGroup.getCurrentCompositionLocalMap();
                        Modifier modifierMaterializeModifier2 = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifier2);
                        Function0 constructor2 = ComposeUiNode.Companion.getConstructor();
                        ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
                        if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                        }
                        composerStartRestartGroup.startReusableNode();
                        if (!composerStartRestartGroup.getInserting()) {
                        }
                        composer2 = Updater.constructor-impl(composerStartRestartGroup);
                        Updater.set-impl(composer2, measurePolicyMaybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.getSetMeasurePolicy());
                        Updater.set-impl(composer2, currentCompositionLocalMap2, ComposeUiNode.Companion.getSetResolvedCompositionLocals());
                        setCompositeKeyHash = ComposeUiNode.Companion.getSetCompositeKeyHash();
                        if (!composer2.getInserting()) {
                            composer2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                            composer2.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
                            Updater.set-impl(composer2, modifierMaterializeModifier2, ComposeUiNode.Companion.getSetModifier());
                            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -2146769399, "C73@3429L9:Box.kt#2w3rfo");
                            BoxScope boxScope2 = BoxScopeInstance.INSTANCE;
                            Modifier modifierFillMaxWidth$default2 = SizeKt.fillMaxWidth$default(Modifier.Companion, 0.0f, 1, (Object) null);
                            composerStartRestartGroup.startReplaceGroup(1551194624);
                            objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                            if (objRememberedValue3 == Composer.Companion.getEmpty()) {
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            Modifier modifierOnFocusChanged2 = FocusChangedModifierKt.onFocusChanged(modifierFillMaxWidth$default2, (Function1) objRememberedValue3);
                            composerStartRestartGroup.startReplaceGroup(1551198817);
                            if (list.isEmpty()) {
                            }
                            composerStartRestartGroup.endReplaceGroup();
                            composerStartRestartGroup.startReplaceGroup(1551185214);
                            zChangedInstance = composerStartRestartGroup.changedInstance(list) | ((i3 & 112) != 32 ? z : false);
                            objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                            if (!zChangedInstance) {
                                objRememberedValue4 = new Function1() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$$ExternalSyntheticLambda1
                                    public final Object invoke(Object obj2) {
                                        return ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$12$lambda$9$lambda$8(function1, list, mutableState, (String) obj2);
                                    }
                                };
                                composerStartRestartGroup.updateRememberedValue(objRememberedValue4);
                                composerStartRestartGroup.endReplaceGroup();
                                int i92 = i3 << 9;
                                Modifier modifier42 = modifier2;
                                OutlinedTextFieldKt.OutlinedTextField(str, (Function1) objRememberedValue4, modifierOnFocusChanged2, false, false, (TextStyle) null, function2, function252, (Function2) null, function2RememberComposableLambda, (Function2) null, (Function2) null, (Function2) null, false, (VisualTransformation) null, (KeyboardOptions) null, (KeyboardActions) null, true, 0, 0, (MutableInteractionSource) null, shape42, textFieldColorsColors, composerStartRestartGroup, (3670016 & i92) | i72 | (i92 & 29360128), 12582912, i82 & 1008, 1965368);
                                if (ModelIdSuggestField$lambda$1(mutableState)) {
                                    PopupProperties popupProperties2 = new PopupProperties(false, false, false, false, 14, (DefaultConstructorMarker) null);
                                    Modifier modifier52 = SizeKt.heightIn-VpY3zN4$default(Modifier.Companion, 0.0f, Dp.constructor-impl(280), 1, (Object) null);
                                    composerStartRestartGroup.startReplaceGroup(1551210957);
                                    objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                                    if (objRememberedValue5 != Composer.Companion.getEmpty()) {
                                    }
                                    composerStartRestartGroup.endReplaceGroup();
                                    composer3 = composerStartRestartGroup;
                                    AndroidMenu_androidKt.DropdownMenu-IlH_yew(z2, (Function0) objRememberedValue5, modifier52, 0L, (ScrollState) null, popupProperties2, (Shape) null, 0L, 0.0f, 0.0f, (BorderStroke) null, ComposableLambdaKt.rememberComposableLambda(-585835270, true, new ModelIdSuggestFieldKt$ModelIdSuggestField$1$5(list32, function1, mutableState2), composerStartRestartGroup, 54), composer3, 197040, 48, 2008);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    composer3.endNode();
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    ComposerKt.sourceInformationMarkerEnd(composer3);
                                    if (ComposerKt.isTraceInProgress()) {
                                    }
                                    function24 = function252;
                                    shape3 = shape42;
                                    textFieldColors3 = textFieldColorsColors;
                                    modifier3 = modifier42;
                                }
                            }
                        }
                    }
                } else {
                    composerStartRestartGroup.skipToGroupEnd();
                    textFieldColors3 = textFieldColors2;
                    shape3 = shape2;
                    function24 = function23;
                    modifier3 = modifier2;
                    composer3 = composerStartRestartGroup;
                }
                scopeUpdateScopeEndRestartGroup = composer3.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.ModelIdSuggestFieldKt$$ExternalSyntheticLambda3
                        public final Object invoke(Object obj2, Object obj3) {
                            return ModelIdSuggestFieldKt.ModelIdSuggestField$lambda$13(str, function1, list, function2, function24, modifier3, shape3, textFieldColors3, i, i2, (Composer) obj2, ((Integer) obj3).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            i3 |= 196608;
            modifier2 = modifier;
            if ((i & 1572864) == 0) {
            }
            if ((i & 12582912) == 0) {
            }
            if ((i3 & 4793491) != 4793490) {
                composerStartRestartGroup.startDefaults();
                if ((i & 1) == 0) {
                    if (i5 != 0) {
                    }
                    if (i4 != 0) {
                    }
                    if ((i2 & 64) != 0) {
                    }
                    if ((i2 & 128) == 0) {
                        textFieldColorsColors = textFieldColors2;
                    }
                    Shape shape422 = shape2;
                    Function2<? super Composer, ? super Integer, Unit> function2522 = function23;
                    composerStartRestartGroup.endDefaults();
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    composerStartRestartGroup.startReplaceGroup(-788558020);
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (objRememberedValue == Composer.Companion.getEmpty()) {
                    }
                    mutableState = (MutableState) objRememberedValue;
                    composerStartRestartGroup.endReplaceGroup();
                    composerStartRestartGroup.startReplaceGroup(-788556024);
                    int i722 = i3 & 14;
                    zChanged = (i722 == 4) | composerStartRestartGroup.changed(list);
                    objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                    if (zChanged) {
                    }
                }
            }
            scopeUpdateScopeEndRestartGroup = composer3.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
            }
        }
        function23 = function22;
        i4 = i2 & 32;
        if (i4 != 0) {
        }
        modifier2 = modifier;
        if ((i & 1572864) == 0) {
        }
        if ((i & 12582912) == 0) {
        }
        if ((i3 & 4793491) != 4793490) {
        }
        scopeUpdateScopeEndRestartGroup = composer3.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean ModelIdSuggestField$lambda$1(MutableState<Boolean> mutableState) {
        return ((Boolean) ((State) mutableState).getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void ModelIdSuggestField$lambda$2(MutableState<Boolean> mutableState, boolean z) {
        mutableState.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ModelIdSuggestField$lambda$12$lambda$9$lambda$8(Function1 function1, List list, MutableState mutableState, String str) {
        Intrinsics.checkNotNullParameter(str, "it");
        function1.invoke(str);
        ModelIdSuggestField$lambda$2(mutableState, !list.isEmpty());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ModelIdSuggestField$lambda$12$lambda$7$lambda$6(MutableState mutableState, FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "it");
        if (!focusState.isFocused()) {
            ModelIdSuggestField$lambda$2(mutableState, false);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit ModelIdSuggestField$lambda$12$lambda$11$lambda$10(MutableState mutableState) {
        ModelIdSuggestField$lambda$2(mutableState, false);
        return Unit.INSTANCE;
    }
}
