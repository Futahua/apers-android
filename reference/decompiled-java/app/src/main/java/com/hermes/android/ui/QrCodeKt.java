package com.hermes.android.ui;

import android.graphics.Bitmap;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.Dp;
import com.google.firebase.encoders.json.BuildConfig;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: QrCode.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a+\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"QrCode", BuildConfig.FLAVOR, "content", BuildConfig.FLAVOR, "size", "Landroidx/compose/ui/unit/Dp;", "modifier", "Landroidx/compose/ui/Modifier;", "QrCode-uFdPcIQ", "(Ljava/lang/String;FLandroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "app_release"}, k = 2, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class QrCodeKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit QrCode_uFdPcIQ$lambda$1(String str, float f, Modifier modifier, int i, int i2, Composer composer, int i3) throws WriterException {
        m63QrCodeuFdPcIQ(str, f, modifier, composer, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /* JADX INFO: renamed from: QrCode-uFdPcIQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m63QrCodeuFdPcIQ(final String str, float f, Modifier modifier, Composer composer, final int i, final int i2) throws WriterException {
        int i3;
        float f2;
        int i4;
        Modifier modifier2;
        boolean z;
        Object objRememberedValue;
        int width;
        int i5;
        final Modifier modifier3;
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup;
        Intrinsics.checkNotNullParameter(str, "content");
        Composer composerStartRestartGroup = composer.startRestartGroup(1489003716);
        if ((i2 & 1) != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (composerStartRestartGroup.changed(str) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i6 = i2 & 2;
        if (i6 != 0) {
            i3 |= 48;
        } else {
            if ((i & 48) == 0) {
                f2 = f;
                i3 |= composerStartRestartGroup.changed(f2) ? 32 : 16;
            }
            i4 = i2 & 4;
            if (i4 != 0) {
                if ((i & 384) == 0) {
                    modifier2 = modifier;
                    i3 |= composerStartRestartGroup.changed(modifier2) ? 256 : 128;
                }
                if ((i3 & 147) == 146 && composerStartRestartGroup.getSkipping()) {
                    composerStartRestartGroup.skipToGroupEnd();
                    modifier3 = modifier2;
                } else {
                    float f3 = i6 == 0 ? Dp.constructor-impl(256) : f2;
                    Modifier modifier4 = i4 == 0 ? (Modifier) Modifier.Companion : modifier2;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(1489003716, i3, -1, "com.hermes.android.ui.QrCode (QrCode.kt:28)");
                    }
                    composerStartRestartGroup.startReplaceGroup(1556789250);
                    z = (i3 & 14) != 4;
                    objRememberedValue = composerStartRestartGroup.rememberedValue();
                    if (!z || objRememberedValue == Composer.Companion.getEmpty()) {
                        BitMatrix bitMatrixEncode = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, 512, 512);
                        width = bitMatrixEncode.getWidth();
                        int height = bitMatrixEncode.getHeight();
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
                        for (i5 = 0; i5 < width; i5++) {
                            for (int i7 = 0; i7 < height; i7++) {
                                bitmapCreateBitmap.setPixel(i5, i7, bitMatrixEncode.get(i5, i7) ? -16777216 : -1);
                            }
                        }
                        composerStartRestartGroup.updateRememberedValue(bitmapCreateBitmap);
                        objRememberedValue = bitmapCreateBitmap;
                    }
                    composerStartRestartGroup.endReplaceGroup();
                    Modifier modifier5 = modifier4;
                    float f4 = f3;
                    ImageKt.Image-5h-nEew(AndroidImageBitmap_androidKt.asImageBitmap((Bitmap) objRememberedValue), "QR Code", PaddingKt.padding-3ABfNKs(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.size-3ABfNKs(modifier4, f3), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12))), Color.Companion.getWhite-0d7_KjU(), (Shape) null, 2, (Object) null), Dp.constructor-impl(8)), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, 0, composerStartRestartGroup, 48, 248);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    f2 = f4;
                    modifier3 = modifier5;
                }
                scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
                if (scopeUpdateScopeEndRestartGroup != null) {
                    final float f5 = f2;
                    scopeUpdateScopeEndRestartGroup.updateScope(new Function2() { // from class: com.hermes.android.ui.QrCodeKt$$ExternalSyntheticLambda0
                        public final Object invoke(Object obj, Object obj2) {
                            return QrCodeKt.QrCode_uFdPcIQ$lambda$1(str, f5, modifier3, i, i2, (Composer) obj, ((Integer) obj2).intValue());
                        }
                    });
                    return;
                }
                return;
            }
            i3 |= 384;
            modifier2 = modifier;
            if ((i3 & 147) == 146) {
                if (i6 == 0) {
                }
                if (i4 == 0) {
                }
                if (ComposerKt.isTraceInProgress()) {
                }
                composerStartRestartGroup.startReplaceGroup(1556789250);
                if ((i3 & 14) != 4) {
                }
                objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (!z) {
                    BitMatrix bitMatrixEncode2 = new QRCodeWriter().encode(str, BarcodeFormat.QR_CODE, 512, 512);
                    width = bitMatrixEncode2.getWidth();
                    int height2 = bitMatrixEncode2.getHeight();
                    Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
                    Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap2, "createBitmap(...)");
                    while (i5 < width) {
                    }
                    composerStartRestartGroup.updateRememberedValue(bitmapCreateBitmap2);
                    objRememberedValue = bitmapCreateBitmap2;
                    composerStartRestartGroup.endReplaceGroup();
                    Modifier modifier52 = modifier4;
                    float f42 = f3;
                    ImageKt.Image-5h-nEew(AndroidImageBitmap_androidKt.asImageBitmap((Bitmap) objRememberedValue), "QR Code", PaddingKt.padding-3ABfNKs(BackgroundKt.background-bw27NRU$default(ClipKt.clip(SizeKt.size-3ABfNKs(modifier4, f3), RoundedCornerShapeKt.RoundedCornerShape-0680j_4(Dp.constructor-impl(12))), Color.Companion.getWhite-0d7_KjU(), (Shape) null, 2, (Object) null), Dp.constructor-impl(8)), (Alignment) null, (ContentScale) null, 0.0f, (ColorFilter) null, 0, composerStartRestartGroup, 48, 248);
                    if (ComposerKt.isTraceInProgress()) {
                    }
                    f2 = f42;
                    modifier3 = modifier52;
                }
            }
            scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
            if (scopeUpdateScopeEndRestartGroup != null) {
            }
        }
        f2 = f;
        i4 = i2 & 4;
        if (i4 != 0) {
        }
        modifier2 = modifier;
        if ((i3 & 147) == 146) {
        }
        scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
        }
    }
}
