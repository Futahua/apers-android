package com.hermes.android.llama;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: StrictJson.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0011B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/hermes/android/llama/StrictJson;", BuildConfig.FLAVOR, "<init>", "()V", "parseObject", "Lorg/json/JSONObject;", "text", BuildConfig.FLAVOR, "parseArray", "Lorg/json/JSONArray;", "isStrictTopLevel", BuildConfig.FLAVOR, "topOpen", BuildConfig.FLAVOR, "MAX_DEPTH", BuildConfig.FLAVOR, "JSON_WS", "Parser", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class StrictJson {
    public static final int $stable = 0;
    public static final StrictJson INSTANCE = new StrictJson();
    private static final String JSON_WS = " \t\n\r";
    private static final int MAX_DEPTH = 256;

    private StrictJson() {
    }

    public final JSONObject parseObject(String text) {
        Object obj;
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Result.Companion companion = Result.Companion;
            StrictJson strictJson = this;
            obj = Result.constructor-impl(isStrictTopLevel(text, '{') ? new JSONObject(text) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return (JSONObject) (Result.isFailure-impl(obj) ? null : obj);
    }

    public final JSONArray parseArray(String text) {
        Object obj;
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Result.Companion companion = Result.Companion;
            StrictJson strictJson = this;
            obj = Result.constructor-impl(isStrictTopLevel(text, '[') ? new JSONArray(text) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            obj = Result.constructor-impl(ResultKt.createFailure(th));
        }
        return (JSONArray) (Result.isFailure-impl(obj) ? null : obj);
    }

    private final boolean isStrictTopLevel(String text, char topOpen) {
        Parser parser = new Parser(text);
        parser.skipWs();
        if (parser.getPos() >= text.length() || text.charAt(parser.getPos()) != topOpen || !parser.value()) {
            return false;
        }
        parser.skipWs();
        return parser.getPos() == text.length();
    }

    /* JADX INFO: compiled from: StrictJson.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\f\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0003H\u0002J\b\u0010\u0013\u001a\u00020\u0010H\u0002J\b\u0010\u0014\u001a\u00020\u0010H\u0002J\b\u0010\u0015\u001a\u00020\u0010H\u0002J\b\u0010\u0016\u001a\u00020\u0010H\u0002J\b\u0010\u0017\u001a\u00020\u0010H\u0002J\b\u0010\u0018\u001a\u00020\u0010H\u0002J\f\u0010\u0019\u001a\u00020\u0010*\u00020\u001aH\u0002J\f\u0010\u001b\u001a\u00020\u0010*\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/hermes/android/llama/StrictJson$Parser;", BuildConfig.FLAVOR, "s", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "pos", BuildConfig.FLAVOR, "getPos", "()I", "setPos", "(I)V", "depth", "skipWs", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.VALUE, BuildConfig.FLAVOR, "lit", "word", "str", "num", "obj", "objBody", "arr", "arrBody", "isHex", BuildConfig.FLAVOR, "isAsciiDigit", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    private static final class Parser {
        private int depth;
        private int pos;
        private final String s;

        private final boolean isAsciiDigit(char c) {
            return '0' <= c && c < ':';
        }

        private final boolean isHex(char c) {
            return ('0' <= c && c < ':') || ('a' <= c && c < 'g') || ('A' <= c && c < 'G');
        }

        public Parser(String str) {
            Intrinsics.checkNotNullParameter(str, "s");
            this.s = str;
        }

        public final int getPos() {
            return this.pos;
        }

        public final void setPos(int i) {
            this.pos = i;
        }

        public final void skipWs() {
            while (this.pos < this.s.length() && StringsKt.contains$default(StrictJson.JSON_WS, this.s.charAt(this.pos), false, 2, (Object) null)) {
                this.pos++;
            }
        }

        public final boolean value() {
            if (this.pos >= this.s.length()) {
                return false;
            }
            char cCharAt = this.s.charAt(this.pos);
            if (cCharAt == '\"') {
                return str();
            }
            if (cCharAt == '[') {
                return arr();
            }
            if (cCharAt == 'f') {
                return lit("false");
            }
            if (cCharAt == 'n') {
                return lit("null");
            }
            if (cCharAt == 't') {
                return lit("true");
            }
            if (cCharAt == '{') {
                return obj();
            }
            return num();
        }

        private final boolean lit(String word) {
            if (!StringsKt.startsWith$default(this.s, word, this.pos, false, 4, (Object) null)) {
                return false;
            }
            this.pos += word.length();
            return true;
        }

        private final boolean str() {
            if (this.pos < this.s.length() && this.s.charAt(this.pos) == '\"') {
                this.pos++;
                while (this.pos < this.s.length()) {
                    char cCharAt = this.s.charAt(this.pos);
                    if (cCharAt == '\"') {
                        this.pos++;
                        return true;
                    }
                    if (cCharAt == '\\') {
                        int i = this.pos + 1;
                        this.pos = i;
                        if (i >= this.s.length()) {
                            return false;
                        }
                        char cCharAt2 = this.s.charAt(this.pos);
                        if (cCharAt2 == '\"' || cCharAt2 == '/' || cCharAt2 == '\\' || cCharAt2 == 'b' || cCharAt2 == 'f' || cCharAt2 == 'n' || cCharAt2 == 'r' || cCharAt2 == 't') {
                            this.pos++;
                        } else {
                            if (cCharAt2 != 'u' || this.pos + 4 >= this.s.length()) {
                                return false;
                            }
                            for (int i2 = 1; i2 < 5; i2++) {
                                if (!isHex(this.s.charAt(this.pos + i2))) {
                                    return false;
                                }
                            }
                            this.pos += 5;
                        }
                    } else {
                        if (cCharAt < ' ') {
                            return false;
                        }
                        this.pos++;
                    }
                }
            }
            return false;
        }

        private final boolean num() {
            int i = this.pos;
            if (i < this.s.length() && this.s.charAt(this.pos) == '-') {
                this.pos++;
            }
            if (this.pos >= this.s.length()) {
                return false;
            }
            if (this.s.charAt(this.pos) == '0') {
                this.pos++;
            } else {
                char cCharAt = this.s.charAt(this.pos);
                if ('1' > cCharAt || cCharAt >= ':') {
                    return false;
                }
                while (this.pos < this.s.length() && isAsciiDigit(this.s.charAt(this.pos))) {
                    this.pos++;
                }
            }
            if (this.pos < this.s.length() && this.s.charAt(this.pos) == '.') {
                int i2 = this.pos + 1;
                this.pos = i2;
                if (i2 >= this.s.length() || !isAsciiDigit(this.s.charAt(this.pos))) {
                    return false;
                }
                while (this.pos < this.s.length() && isAsciiDigit(this.s.charAt(this.pos))) {
                    this.pos++;
                }
            }
            if (this.pos < this.s.length() && (this.s.charAt(this.pos) == 'e' || this.s.charAt(this.pos) == 'E')) {
                int i3 = this.pos + 1;
                this.pos = i3;
                if (i3 < this.s.length() && (this.s.charAt(this.pos) == '+' || this.s.charAt(this.pos) == '-')) {
                    this.pos++;
                }
                if (this.pos >= this.s.length() || !isAsciiDigit(this.s.charAt(this.pos))) {
                    return false;
                }
                while (this.pos < this.s.length() && isAsciiDigit(this.s.charAt(this.pos))) {
                    this.pos++;
                }
            }
            return this.pos > i;
        }

        private final boolean obj() {
            int i = this.depth;
            int i2 = i + 1;
            this.depth = i2;
            if (i2 > StrictJson.MAX_DEPTH) {
                this.depth = i;
                return false;
            }
            this.depth--;
            return objBody();
        }

        /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
        
            return false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private final boolean objBody() {
            this.pos++;
            skipWs();
            if (this.pos < this.s.length() && this.s.charAt(this.pos) == '}') {
                this.pos++;
                return true;
            }
            while (true) {
                skipWs();
                if (!str()) {
                    return false;
                }
                skipWs();
                if (this.pos >= this.s.length() || this.s.charAt(this.pos) != ':') {
                    break;
                }
                this.pos++;
                skipWs();
                if (!value()) {
                    return false;
                }
                skipWs();
                if (this.pos >= this.s.length()) {
                    return false;
                }
                char cCharAt = this.s.charAt(this.pos);
                if (cCharAt != ',') {
                    if (cCharAt != '}') {
                        return false;
                    }
                    this.pos++;
                    return true;
                }
                this.pos++;
            }
        }

        private final boolean arr() {
            int i = this.depth;
            int i2 = i + 1;
            this.depth = i2;
            if (i2 > StrictJson.MAX_DEPTH) {
                this.depth = i;
                return false;
            }
            this.depth--;
            return arrBody();
        }

        private final boolean arrBody() {
            this.pos++;
            skipWs();
            if (this.pos < this.s.length() && this.s.charAt(this.pos) == ']') {
                this.pos++;
                return true;
            }
            while (true) {
                skipWs();
                if (!value()) {
                    return false;
                }
                skipWs();
                if (this.pos >= this.s.length()) {
                    return false;
                }
                char cCharAt = this.s.charAt(this.pos);
                if (cCharAt != ',') {
                    if (cCharAt != ']') {
                        return false;
                    }
                    this.pos++;
                    return true;
                }
                this.pos++;
            }
        }
    }
}
