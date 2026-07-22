package com.hermes.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ImageAttach.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012J\"\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\"\u0010\u0016\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J%\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u0007H\u0000¢\u0006\u0002\b\u001dJ\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u001f\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/hermes/android/ImageAttach;", "", "<init>", "()V", "TAG", "", "MAX_DIMENSION", "", "MAX_RAW_COPY_BYTES", "", "COPYABLE_MIME_EXT", "", "imagesDir", "Ljava/io/File;", "context", "Landroid/content/Context;", "saveToHermesImages", "uri", "Landroid/net/Uri;", "copyRaw", "ext", "transcodeToJpeg", "finalizeTemp", "tmp", "dir", "computeInSampleSize", "width", "height", "maxDim", "computeInSampleSize$app_release", "imageUriFromClip", "imageCommand", "path", "app_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ImageAttach {
    private static final int MAX_DIMENSION = 2048;
    private static final long MAX_RAW_COPY_BYTES = 67108864;
    private static final String TAG = "ImageAttach";
    public static final ImageAttach INSTANCE = new ImageAttach();
    private static final Map<String, String> COPYABLE_MIME_EXT = MapsKt.mapOf(new Pair[]{TuplesKt.to("image/jpeg", "jpg"), TuplesKt.to("image/jpg", "jpg"), TuplesKt.to("image/png", "png"), TuplesKt.to("image/webp", "webp"), TuplesKt.to("image/gif", "gif"), TuplesKt.to("image/bmp", "bmp"), TuplesKt.to("image/x-ms-bmp", "bmp"), TuplesKt.to("image/tiff", "tif")});
    public static final int $stable = 8;

    private ImageAttach() {
    }

    private final File imagesDir(Context context) {
        File file = new File(HermesPaths.INSTANCE.hermesHome(context), "images");
        file.mkdirs();
        return file;
    }

    public final String saveToHermesImages(Context context, Uri uri) {
        String lowerCase;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            String type = context.getContentResolver().getType(uri);
            if (type != null) {
                lowerCase = type.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            String str = COPYABLE_MIME_EXT.get(lowerCase);
            return str != null ? copyRaw(context, uri, str) : transcodeToJpeg(context, uri);
        } catch (Exception e) {
            Log.w(TAG, "saveToHermesImages failed: " + e.getMessage());
            return null;
        } catch (OutOfMemoryError e2) {
            Log.w(TAG, "saveToHermesImages OOM: " + e2.getMessage());
            return null;
        }
    }

    private final String copyRaw(Context context, Uri uri, String ext) throws IOException {
        boolean z;
        File fileImagesDir = imagesDir(context);
        File fileCreateTempFile = File.createTempFile("att-", ".part", fileImagesDir);
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                fileCreateTempFile.delete();
                return null;
            }
            try {
                InputStream inputStream = inputStreamOpenInputStream;
                try {
                    InputStream inputStream2 = inputStream;
                    Intrinsics.checkNotNull(fileCreateTempFile);
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    try {
                        FileOutputStream fileOutputStream2 = fileOutputStream;
                        byte[] bArr = new byte[65536];
                        long j = 0;
                        while (true) {
                            int i = inputStream2.read(bArr);
                            z = false;
                            if (i < 0) {
                                break;
                            }
                            j += (long) i;
                            if (j > MAX_RAW_COPY_BYTES) {
                                z = true;
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, i);
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(fileOutputStream, (Throwable) null);
                        Unit unit2 = Unit.INSTANCE;
                        CloseableKt.closeFinally(inputStream, (Throwable) null);
                        if (z) {
                            Log.w(TAG, "copyRaw aborted: exceeds 64MiB cap");
                            fileCreateTempFile.delete();
                            return null;
                        }
                        return finalizeTemp(fileCreateTempFile, fileImagesDir, ext);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                CloseableKt.closeFinally(fileOutputStream, th);
                                throw th2;
                            } catch (Throwable th3) {
                                th = th3;
                                Throwable th4 = th;
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    CloseableKt.closeFinally(inputStream, th4);
                                    throw th5;
                                }
                            }
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Exception e) {
                e = e;
                fileCreateTempFile.delete();
                Log.w(TAG, "copyRaw failed: " + e.getMessage());
                return null;
            } catch (OutOfMemoryError e2) {
                e = e2;
                fileCreateTempFile.delete();
                Log.w(TAG, "copyRaw OOM: " + e.getMessage());
                return null;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (OutOfMemoryError e4) {
            e = e4;
        }
    }

    private final String transcodeToJpeg(Context context, Uri uri) throws IOException {
        Bitmap bitmapDecodeStream;
        boolean zCompress;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
        String strFinalizeTemp = null;
        if (inputStreamOpenInputStream != null) {
            FileOutputStream fileOutputStream = inputStreamOpenInputStream;
            try {
                Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(fileOutputStream, null, options);
                CloseableKt.closeFinally(fileOutputStream, (Throwable) null);
                if (bitmapDecodeStream2 != null) {
                    if (options.outWidth <= 0 || options.outHeight <= 0) {
                        Log.w(TAG, "not a decodable image (unsupported/API<28 HEIC): " + uri);
                        return null;
                    }
                    BitmapFactory.Options options2 = new BitmapFactory.Options();
                    options2.inSampleSize = INSTANCE.computeInSampleSize$app_release(options.outWidth, options.outHeight, 2048);
                    InputStream inputStreamOpenInputStream2 = context.getContentResolver().openInputStream(uri);
                    if (inputStreamOpenInputStream2 != null) {
                        fileOutputStream = inputStreamOpenInputStream2;
                        try {
                            bitmapDecodeStream = BitmapFactory.decodeStream(fileOutputStream, null, options2);
                            CloseableKt.closeFinally(fileOutputStream, (Throwable) null);
                        } finally {
                        }
                    } else {
                        bitmapDecodeStream = null;
                    }
                    if (bitmapDecodeStream == null) {
                        Log.w(TAG, "downsampled decode returned null: " + uri);
                        return null;
                    }
                    File fileImagesDir = imagesDir(context);
                    File fileCreateTempFile = File.createTempFile("att-", ".part", fileImagesDir);
                    try {
                        try {
                            Intrinsics.checkNotNull(fileCreateTempFile);
                            fileOutputStream = new FileOutputStream(fileCreateTempFile);
                            try {
                                zCompress = bitmapDecodeStream.compress(Bitmap.CompressFormat.JPEG, 90, fileOutputStream);
                                CloseableKt.closeFinally(fileOutputStream, (Throwable) null);
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        } finally {
                            bitmapDecodeStream.recycle();
                        }
                    } catch (Exception e) {
                        fileCreateTempFile.delete();
                        Log.w(TAG, "transcode write failed: " + e.getMessage());
                    } catch (OutOfMemoryError e2) {
                        fileCreateTempFile.delete();
                        Log.w(TAG, "transcode write OOM: " + e2.getMessage());
                    }
                    if (!zCompress) {
                        fileCreateTempFile.delete();
                        Log.w(TAG, "JPEG compress returned false");
                        return null;
                    }
                    strFinalizeTemp = finalizeTemp(fileCreateTempFile, fileImagesDir, "jpg");
                    return strFinalizeTemp;
                }
            } finally {
                try {
                    throw th;
                } finally {
                }
            }
        }
        return null;
    }

    private final String finalizeTemp(File tmp, File dir, String ext) {
        if (tmp.length() == 0) {
            tmp.delete();
            return null;
        }
        File file = new File(dir, "att-" + UUID.randomUUID() + "." + ext);
        if (tmp.renameTo(file)) {
            return file.getAbsolutePath();
        }
        tmp.delete();
        return null;
    }

    public final int computeInSampleSize$app_release(int width, int height, int maxDim) {
        int iMax = Math.max(width, height);
        int i = 1;
        while (iMax / i > maxDim) {
            i *= 2;
        }
        return i;
    }

    public final Uri imageUriFromClip(Context context, Uri uri) {
        String type;
        Intrinsics.checkNotNullParameter(context, "context");
        if (uri == null || (type = context.getContentResolver().getType(uri)) == null || !StringsKt.startsWith$default(type, "image/", false, 2, (Object) null)) {
            return null;
        }
        return uri;
    }

    public final String imageCommand(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return "/image " + path + "\r";
    }
}
