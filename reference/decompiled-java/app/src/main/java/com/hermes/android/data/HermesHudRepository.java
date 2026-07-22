package com.hermes.android.data;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.json.BuildConfig;
import com.goterl.lazysodium.interfaces.Box;
import com.hermes.android.data.HermesHudRepository;
import com.hermes.android.llama.BackendPreference;
import java.io.File;
import java.io.FileFilter;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Triple;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.yaml.snakeyaml.Yaml;

/* JADX INFO: compiled from: HermesHudRepository.kt */
/* JADX INFO: loaded from: /data/user/0/com.hermesagent.android/files/home/extract/classes2.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0012\b\u0007\u0018\u0000 Q2\u00020\u0001:\nQRSTUVWXYZB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\fJ\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0007J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0007J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u0003H\u0002J4\u0010\u001f\u001a\u0004\u0018\u0001H \"\u0004\b\u0000\u0010 2\b\b\u0002\u0010!\u001a\u00020\u001c2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u0002H 0#H\u0082\b¢\u0006\u0002\u0010%J\u001c\u0010&\u001a\u0016\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0018\u00010'H\u0002J\u0018\u0010(\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010)\u001a\u00020\u001a2\u0006\u0010*\u001a\u00020+H\u0002J\u0018\u0010,\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010-\u001a\u00020\u001a2\u0006\u0010.\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J&\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010.\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u00100\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u001e\u00101\u001a\b\u0012\u0004\u0012\u00020\u00180\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J \u00102\u001a\u0002032\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u00104\u001a\u00020+2\b\b\u0002\u0010\u000f\u001a\u00020\u0010J\u0017\u00105\u001a\u0002062\n\b\u0002\u00107\u001a\u0004\u0018\u00010+¢\u0006\u0002\u00108J\u000e\u00109\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\u0012\u0010:\u001a\u0004\u0018\u00010\b2\u0006\u0010;\u001a\u00020\u0003H\u0002J\u0014\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0=H\u0002J\u000e\u0010>\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0007H\u0002J$\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100=2\u0006\u0010;\u001a\u00020\u00032\u0006\u0010@\u001a\u00020\u0010H\u0002J\u0014\u0010A\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00100=H\u0002J\u000e\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00160\u0007H\u0002J\b\u0010C\u001a\u00020\u001aH\u0002J\b\u0010D\u001a\u00020\u001cH\u0002J\u0010\u0010E\u001a\u00020\u001a2\u0006\u0010F\u001a\u00020\u001aH\u0002J%\u0010G\u001a\u00020\u001c*\u00020\u001a2\u0012\u0010H\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001a0I\"\u00020\u001aH\u0002¢\u0006\u0002\u0010JJ\u000e\u0010K\u001a\u00020\u001a2\u0006\u0010L\u001a\u00020\u001aJ\b\u0010M\u001a\u0004\u0018\u00010\u001aJ\u001e\u0010N\u001a\b\u0012\u0004\u0012\u00020\u00120\u00072\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010O\u001a\u00020\u001a2\u0006\u0010P\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u001aH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006["}, d2 = {"Lcom/hermes/android/data/HermesHudRepository;", BuildConfig.FLAVOR, "hermesDir", "Ljava/io/File;", "<init>", "(Ljava/io/File;)V", "cachedSessions", BuildConfig.FLAVOR, "Lcom/hermes/android/data/HermesHudRepository$ParsedSession;", "cacheTimestamp", BuildConfig.FLAVOR, "collectOverview", "Lcom/hermes/android/data/HermesHudRepository$HudOverview;", "recentSessions", "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "limit", BuildConfig.FLAVOR, "topTools", "Lcom/hermes/android/data/HermesHudRepository$ToolUsage;", "memoryEntries", "Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;", "cronJobs", "Lcom/hermes/android/data/HermesHudRepository$CronJob;", "readSessionMessages", "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;", "sessionId", BuildConfig.FLAVOR, "deleteSession", BuildConfig.FLAVOR, "deleteSessionJson", "stateDbFile", "withStateDb", "T", "writable", "body", "Lkotlin/Function1;", "Landroid/database/sqlite/SQLiteDatabase;", "(ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "sessionTotalsFromDb", "Lkotlin/Triple;", "topToolsFromDb", "epochToIso", "sec", BuildConfig.FLAVOR, "recentSessionsFromDb", "firstUserMessageFromDb", "db", "readMessagesNewestChrono", "readSessionMessagesFromDb", "chatMessages", "settleCheck", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "sinceEpochSec", "resolveNewestSession", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", "startedAfterSec", "(Ljava/lang/Double;)Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", "loadAllSessions", "parseSessionFile", "file", "readConfig", "Lkotlin/Pair;", "readApiKeyNames", "readMemoryStats", "maxChars", "countSkills", "readCronJobs", "readSoulSummary", "checkGateway", "classifyMemory", "text", "containsAny", "terms", BuildConfig.FLAVOR, "(Ljava/lang/String;[Ljava/lang/String;)Z", "formatSessionTime", "isoTime", "getLastSessionBanner", "topToolsForSessionFromDb", "formatSessionBanner", "s", "Companion", "HudOverview", "SessionInfo", "ChatMessage", "ToolUsage", "MemoryEntry", "CronJob", "ParsedSession", "TurnSettle", "SessionResolution", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
public final class HermesHudRepository {
    private static final SimpleDateFormat ISO_FORMAT;
    private static final String TAG = "HermesHud";
    private long cacheTimestamp;
    private List<ParsedSession> cachedSessions;
    private final File hermesDir;
    public static final int $stable = 8;

    public HermesHudRepository(File file) {
        Intrinsics.checkNotNullParameter(file, "hermesDir");
        this.hermesDir = file;
    }

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getDefault());
        ISO_FORMAT = simpleDateFormat;
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b*\b\u0087\b\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006HÆ\u0003J\t\u0010-\u001a\u00020\bHÆ\u0003J\t\u0010.\u001a\u00020\bHÆ\u0003J\t\u0010/\u001a\u00020\bHÆ\u0003J\t\u00100\u001a\u00020\bHÆ\u0003J\t\u00101\u001a\u00020\bHÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\t\u00103\u001a\u00020\bHÆ\u0003J\t\u00104\u001a\u00020\bHÆ\u0003J\t\u00105\u001a\u00020\bHÆ\u0003J\t\u00106\u001a\u00020\bHÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0014HÆ\u0003J¥\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\n\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\b2\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u0014HÆ\u0001J\u0013\u0010:\u001a\u00020\u00142\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020\bHÖ\u0001J\t\u0010=\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001dR\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001dR\u0011\u0010\f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001dR\u0011\u0010\r\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001dR\u0011\u0010\u000e\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001dR\u0011\u0010\u0010\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0018R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)¨\u0006>"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$HudOverview;", BuildConfig.FLAVOR, "provider", BuildConfig.FLAVOR, "model", "apiKeysConfigured", BuildConfig.FLAVOR, "totalSessions", BuildConfig.FLAVOR, "totalMessages", "totalToolCalls", "memoryEntries", "memoryCapacityPct", "userEntries", "skillCount", "customSkillCount", "cronJobCount", "cronActiveCount", "soulSummary", "gatewayAlive", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIIIIIIIIILjava/lang/String;Z)V", "getProvider", "()Ljava/lang/String;", "getModel", "getApiKeysConfigured", "()Ljava/util/List;", "getTotalSessions", "()I", "getTotalMessages", "getTotalToolCalls", "getMemoryEntries", "getMemoryCapacityPct", "getUserEntries", "getSkillCount", "getCustomSkillCount", "getCronJobCount", "getCronActiveCount", "getSoulSummary", "getGatewayAlive", "()Z", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class HudOverview {
        public static final int $stable = 8;
        private final List<String> apiKeysConfigured;
        private final int cronActiveCount;
        private final int cronJobCount;
        private final int customSkillCount;
        private final boolean gatewayAlive;
        private final int memoryCapacityPct;
        private final int memoryEntries;
        private final String model;
        private final String provider;
        private final int skillCount;
        private final String soulSummary;
        private final int totalMessages;
        private final int totalSessions;
        private final int totalToolCalls;
        private final int userEntries;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getProvider() {
            return this.provider;
        }

        /* JADX INFO: renamed from: component10, reason: from getter */
        public final int getSkillCount() {
            return this.skillCount;
        }

        /* JADX INFO: renamed from: component11, reason: from getter */
        public final int getCustomSkillCount() {
            return this.customSkillCount;
        }

        /* JADX INFO: renamed from: component12, reason: from getter */
        public final int getCronJobCount() {
            return this.cronJobCount;
        }

        /* JADX INFO: renamed from: component13, reason: from getter */
        public final int getCronActiveCount() {
            return this.cronActiveCount;
        }

        /* JADX INFO: renamed from: component14, reason: from getter */
        public final String getSoulSummary() {
            return this.soulSummary;
        }

        /* JADX INFO: renamed from: component15, reason: from getter */
        public final boolean getGatewayAlive() {
            return this.gatewayAlive;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getModel() {
            return this.model;
        }

        public final List<String> component3() {
            return this.apiKeysConfigured;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getTotalSessions() {
            return this.totalSessions;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final int getTotalMessages() {
            return this.totalMessages;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getTotalToolCalls() {
            return this.totalToolCalls;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getMemoryEntries() {
            return this.memoryEntries;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final int getMemoryCapacityPct() {
            return this.memoryCapacityPct;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final int getUserEntries() {
            return this.userEntries;
        }

        public final HudOverview copy(String provider, String model, List<String> apiKeysConfigured, int totalSessions, int totalMessages, int totalToolCalls, int memoryEntries, int memoryCapacityPct, int userEntries, int skillCount, int customSkillCount, int cronJobCount, int cronActiveCount, String soulSummary, boolean gatewayAlive) {
            Intrinsics.checkNotNullParameter(provider, "provider");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(apiKeysConfigured, "apiKeysConfigured");
            Intrinsics.checkNotNullParameter(soulSummary, "soulSummary");
            return new HudOverview(provider, model, apiKeysConfigured, totalSessions, totalMessages, totalToolCalls, memoryEntries, memoryCapacityPct, userEntries, skillCount, customSkillCount, cronJobCount, cronActiveCount, soulSummary, gatewayAlive);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof HudOverview)) {
                return false;
            }
            HudOverview hudOverview = (HudOverview) other;
            return Intrinsics.areEqual(this.provider, hudOverview.provider) && Intrinsics.areEqual(this.model, hudOverview.model) && Intrinsics.areEqual(this.apiKeysConfigured, hudOverview.apiKeysConfigured) && this.totalSessions == hudOverview.totalSessions && this.totalMessages == hudOverview.totalMessages && this.totalToolCalls == hudOverview.totalToolCalls && this.memoryEntries == hudOverview.memoryEntries && this.memoryCapacityPct == hudOverview.memoryCapacityPct && this.userEntries == hudOverview.userEntries && this.skillCount == hudOverview.skillCount && this.customSkillCount == hudOverview.customSkillCount && this.cronJobCount == hudOverview.cronJobCount && this.cronActiveCount == hudOverview.cronActiveCount && Intrinsics.areEqual(this.soulSummary, hudOverview.soulSummary) && this.gatewayAlive == hudOverview.gatewayAlive;
        }

        public int hashCode() {
            return (((((((((((((((((((((((((((this.provider.hashCode() * 31) + this.model.hashCode()) * 31) + this.apiKeysConfigured.hashCode()) * 31) + Integer.hashCode(this.totalSessions)) * 31) + Integer.hashCode(this.totalMessages)) * 31) + Integer.hashCode(this.totalToolCalls)) * 31) + Integer.hashCode(this.memoryEntries)) * 31) + Integer.hashCode(this.memoryCapacityPct)) * 31) + Integer.hashCode(this.userEntries)) * 31) + Integer.hashCode(this.skillCount)) * 31) + Integer.hashCode(this.customSkillCount)) * 31) + Integer.hashCode(this.cronJobCount)) * 31) + Integer.hashCode(this.cronActiveCount)) * 31) + this.soulSummary.hashCode()) * 31) + Boolean.hashCode(this.gatewayAlive);
        }

        public String toString() {
            return "HudOverview(provider=" + this.provider + ", model=" + this.model + ", apiKeysConfigured=" + this.apiKeysConfigured + ", totalSessions=" + this.totalSessions + ", totalMessages=" + this.totalMessages + ", totalToolCalls=" + this.totalToolCalls + ", memoryEntries=" + this.memoryEntries + ", memoryCapacityPct=" + this.memoryCapacityPct + ", userEntries=" + this.userEntries + ", skillCount=" + this.skillCount + ", customSkillCount=" + this.customSkillCount + ", cronJobCount=" + this.cronJobCount + ", cronActiveCount=" + this.cronActiveCount + ", soulSummary=" + this.soulSummary + ", gatewayAlive=" + this.gatewayAlive + ")";
        }

        public HudOverview(String str, String str2, List<String> list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, String str3, boolean z) {
            Intrinsics.checkNotNullParameter(str, "provider");
            Intrinsics.checkNotNullParameter(str2, "model");
            Intrinsics.checkNotNullParameter(list, "apiKeysConfigured");
            Intrinsics.checkNotNullParameter(str3, "soulSummary");
            this.provider = str;
            this.model = str2;
            this.apiKeysConfigured = list;
            this.totalSessions = i;
            this.totalMessages = i2;
            this.totalToolCalls = i3;
            this.memoryEntries = i4;
            this.memoryCapacityPct = i5;
            this.userEntries = i6;
            this.skillCount = i7;
            this.customSkillCount = i8;
            this.cronJobCount = i9;
            this.cronActiveCount = i10;
            this.soulSummary = str3;
            this.gatewayAlive = z;
        }

        public final String getProvider() {
            return this.provider;
        }

        public final String getModel() {
            return this.model;
        }

        public final List<String> getApiKeysConfigured() {
            return this.apiKeysConfigured;
        }

        public final int getTotalSessions() {
            return this.totalSessions;
        }

        public final int getTotalMessages() {
            return this.totalMessages;
        }

        public final int getTotalToolCalls() {
            return this.totalToolCalls;
        }

        public final int getMemoryEntries() {
            return this.memoryEntries;
        }

        public final int getMemoryCapacityPct() {
            return this.memoryCapacityPct;
        }

        public final int getUserEntries() {
            return this.userEntries;
        }

        public final int getSkillCount() {
            return this.skillCount;
        }

        public final int getCustomSkillCount() {
            return this.customSkillCount;
        }

        public final int getCronJobCount() {
            return this.cronJobCount;
        }

        public final int getCronActiveCount() {
            return this.cronActiveCount;
        }

        public final String getSoulSummary() {
            return this.soulSummary;
        }

        public final boolean getGatewayAlive() {
            return this.gatewayAlive;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J\t\u0010\u001e\u001a\u00020\tHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003JY\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\tHÖ\u0001J\t\u0010%\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000f¨\u0006&"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", BuildConfig.FLAVOR, "id", BuildConfig.FLAVOR, "model", "platform", "sessionStart", "lastUpdated", "messageCount", BuildConfig.FLAVOR, "toolCallCount", "firstUserMessage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V", "getId", "()Ljava/lang/String;", "getModel", "getPlatform", "getSessionStart", "getLastUpdated", "getMessageCount", "()I", "getToolCallCount", "getFirstUserMessage", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class SessionInfo {
        public static final int $stable = 0;
        private final String firstUserMessage;
        private final String id;
        private final String lastUpdated;
        private final int messageCount;
        private final String model;
        private final String platform;
        private final String sessionStart;
        private final int toolCallCount;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getModel() {
            return this.model;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPlatform() {
            return this.platform;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getSessionStart() {
            return this.sessionStart;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final String getLastUpdated() {
            return this.lastUpdated;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final int getMessageCount() {
            return this.messageCount;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final int getToolCallCount() {
            return this.toolCallCount;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getFirstUserMessage() {
            return this.firstUserMessage;
        }

        public final SessionInfo copy(String id, String model, String platform, String sessionStart, String lastUpdated, int messageCount, int toolCallCount, String firstUserMessage) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(model, "model");
            Intrinsics.checkNotNullParameter(platform, "platform");
            Intrinsics.checkNotNullParameter(sessionStart, "sessionStart");
            Intrinsics.checkNotNullParameter(lastUpdated, "lastUpdated");
            Intrinsics.checkNotNullParameter(firstUserMessage, "firstUserMessage");
            return new SessionInfo(id, model, platform, sessionStart, lastUpdated, messageCount, toolCallCount, firstUserMessage);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SessionInfo)) {
                return false;
            }
            SessionInfo sessionInfo = (SessionInfo) other;
            return Intrinsics.areEqual(this.id, sessionInfo.id) && Intrinsics.areEqual(this.model, sessionInfo.model) && Intrinsics.areEqual(this.platform, sessionInfo.platform) && Intrinsics.areEqual(this.sessionStart, sessionInfo.sessionStart) && Intrinsics.areEqual(this.lastUpdated, sessionInfo.lastUpdated) && this.messageCount == sessionInfo.messageCount && this.toolCallCount == sessionInfo.toolCallCount && Intrinsics.areEqual(this.firstUserMessage, sessionInfo.firstUserMessage);
        }

        public int hashCode() {
            return (((((((((((((this.id.hashCode() * 31) + this.model.hashCode()) * 31) + this.platform.hashCode()) * 31) + this.sessionStart.hashCode()) * 31) + this.lastUpdated.hashCode()) * 31) + Integer.hashCode(this.messageCount)) * 31) + Integer.hashCode(this.toolCallCount)) * 31) + this.firstUserMessage.hashCode();
        }

        public String toString() {
            return "SessionInfo(id=" + this.id + ", model=" + this.model + ", platform=" + this.platform + ", sessionStart=" + this.sessionStart + ", lastUpdated=" + this.lastUpdated + ", messageCount=" + this.messageCount + ", toolCallCount=" + this.toolCallCount + ", firstUserMessage=" + this.firstUserMessage + ")";
        }

        public SessionInfo(String str, String str2, String str3, String str4, String str5, int i, int i2, String str6) {
            Intrinsics.checkNotNullParameter(str, "id");
            Intrinsics.checkNotNullParameter(str2, "model");
            Intrinsics.checkNotNullParameter(str3, "platform");
            Intrinsics.checkNotNullParameter(str4, "sessionStart");
            Intrinsics.checkNotNullParameter(str5, "lastUpdated");
            Intrinsics.checkNotNullParameter(str6, "firstUserMessage");
            this.id = str;
            this.model = str2;
            this.platform = str3;
            this.sessionStart = str4;
            this.lastUpdated = str5;
            this.messageCount = i;
            this.toolCallCount = i2;
            this.firstUserMessage = str6;
        }

        public final String getId() {
            return this.id;
        }

        public final String getModel() {
            return this.model;
        }

        public final String getPlatform() {
            return this.platform;
        }

        public final String getSessionStart() {
            return this.sessionStart;
        }

        public final String getLastUpdated() {
            return this.lastUpdated;
        }

        public final int getMessageCount() {
            return this.messageCount;
        }

        public final int getToolCallCount() {
            return this.toolCallCount;
        }

        public final String getFirstUserMessage() {
            return this.firstUserMessage;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$ChatMessage;", BuildConfig.FLAVOR, "role", BuildConfig.FLAVOR, "content", "toolName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getRole", "()Ljava/lang/String;", "getContent", "getToolName", "component1", "component2", "component3", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class ChatMessage {
        public static final int $stable = 0;
        private final String content;
        private final String role;
        private final String toolName;

        public static /* synthetic */ ChatMessage copy$default(ChatMessage chatMessage, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = chatMessage.role;
            }
            if ((i & 2) != 0) {
                str2 = chatMessage.content;
            }
            if ((i & 4) != 0) {
                str3 = chatMessage.toolName;
            }
            return chatMessage.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getRole() {
            return this.role;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getContent() {
            return this.content;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getToolName() {
            return this.toolName;
        }

        public final ChatMessage copy(String role, String content, String toolName) {
            Intrinsics.checkNotNullParameter(role, "role");
            Intrinsics.checkNotNullParameter(content, "content");
            return new ChatMessage(role, content, toolName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ChatMessage)) {
                return false;
            }
            ChatMessage chatMessage = (ChatMessage) other;
            return Intrinsics.areEqual(this.role, chatMessage.role) && Intrinsics.areEqual(this.content, chatMessage.content) && Intrinsics.areEqual(this.toolName, chatMessage.toolName);
        }

        public int hashCode() {
            int iHashCode = ((this.role.hashCode() * 31) + this.content.hashCode()) * 31;
            String str = this.toolName;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "ChatMessage(role=" + this.role + ", content=" + this.content + ", toolName=" + this.toolName + ")";
        }

        public ChatMessage(String str, String str2, String str3) {
            Intrinsics.checkNotNullParameter(str, "role");
            Intrinsics.checkNotNullParameter(str2, "content");
            this.role = str;
            this.content = str2;
            this.toolName = str3;
        }

        public /* synthetic */ ChatMessage(String str, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, (i & 4) != 0 ? null : str3);
        }

        public final String getRole() {
            return this.role;
        }

        public final String getContent() {
            return this.content;
        }

        public final String getToolName() {
            return this.toolName;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0014"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$ToolUsage;", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, BuildConfig.FLAVOR, "count", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;I)V", "getName", "()Ljava/lang/String;", "getCount", "()I", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class ToolUsage {
        public static final int $stable = 0;
        private final int count;
        private final String name;

        public static /* synthetic */ ToolUsage copy$default(ToolUsage toolUsage, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = toolUsage.name;
            }
            if ((i2 & 2) != 0) {
                i = toolUsage.count;
            }
            return toolUsage.copy(str, i);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getCount() {
            return this.count;
        }

        public final ToolUsage copy(String name, int count) {
            Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
            return new ToolUsage(name, count);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ToolUsage)) {
                return false;
            }
            ToolUsage toolUsage = (ToolUsage) other;
            return Intrinsics.areEqual(this.name, toolUsage.name) && this.count == toolUsage.count;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.count);
        }

        public String toString() {
            return "ToolUsage(name=" + this.name + ", count=" + this.count + ")";
        }

        public ToolUsage(String str, int i) {
            Intrinsics.checkNotNullParameter(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
            this.name = str;
            this.count = i;
        }

        public final int getCount() {
            return this.count;
        }

        public final String getName() {
            return this.name;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$MemoryEntry;", BuildConfig.FLAVOR, "text", BuildConfig.FLAVOR, "category", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getText", "()Ljava/lang/String;", "getCategory", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class MemoryEntry {
        public static final int $stable = 0;
        private final String category;
        private final String text;

        public static /* synthetic */ MemoryEntry copy$default(MemoryEntry memoryEntry, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = memoryEntry.text;
            }
            if ((i & 2) != 0) {
                str2 = memoryEntry.category;
            }
            return memoryEntry.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getText() {
            return this.text;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getCategory() {
            return this.category;
        }

        public final MemoryEntry copy(String text, String category) {
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(category, "category");
            return new MemoryEntry(text, category);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MemoryEntry)) {
                return false;
            }
            MemoryEntry memoryEntry = (MemoryEntry) other;
            return Intrinsics.areEqual(this.text, memoryEntry.text) && Intrinsics.areEqual(this.category, memoryEntry.category);
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.category.hashCode();
        }

        public String toString() {
            return "MemoryEntry(text=" + this.text + ", category=" + this.category + ")";
        }

        public MemoryEntry(String str, String str2) {
            Intrinsics.checkNotNullParameter(str, "text");
            Intrinsics.checkNotNullParameter(str2, "category");
            this.text = str;
            this.category = str2;
        }

        public final String getText() {
            return this.text;
        }

        public final String getCategory() {
            return this.category;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\bHÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\u0003HÆ\u0003Jc\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010$\u001a\u00020\b2\b\u0010%\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010&\u001a\u00020'HÖ\u0001J\t\u0010(\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0010¨\u0006)"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$CronJob;", BuildConfig.FLAVOR, "id", BuildConfig.FLAVOR, AppMeasurementSdk.ConditionalUserProperty.NAME, "prompt", "schedule", "enabled", BuildConfig.FLAVOR, "state", "lastRunAt", "nextRunAt", "lastStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getName", "getPrompt", "getSchedule", "getEnabled", "()Z", "getState", "getLastRunAt", "getNextRunAt", "getLastStatus", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public static final /* data */ class CronJob {
        public static final int $stable = 0;
        private final boolean enabled;
        private final String id;
        private final String lastRunAt;
        private final String lastStatus;
        private final String name;
        private final String nextRunAt;
        private final String prompt;
        private final String schedule;
        private final String state;

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getId() {
            return this.id;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getPrompt() {
            return this.prompt;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final String getSchedule() {
            return this.schedule;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getEnabled() {
            return this.enabled;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final String getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final String getLastRunAt() {
            return this.lastRunAt;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final String getNextRunAt() {
            return this.nextRunAt;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final String getLastStatus() {
            return this.lastStatus;
        }

        public final CronJob copy(String id, String name, String prompt, String schedule, boolean enabled, String state, String lastRunAt, String nextRunAt, String lastStatus) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(name, AppMeasurementSdk.ConditionalUserProperty.NAME);
            Intrinsics.checkNotNullParameter(prompt, "prompt");
            Intrinsics.checkNotNullParameter(schedule, "schedule");
            Intrinsics.checkNotNullParameter(state, "state");
            Intrinsics.checkNotNullParameter(lastRunAt, "lastRunAt");
            Intrinsics.checkNotNullParameter(nextRunAt, "nextRunAt");
            Intrinsics.checkNotNullParameter(lastStatus, "lastStatus");
            return new CronJob(id, name, prompt, schedule, enabled, state, lastRunAt, nextRunAt, lastStatus);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CronJob)) {
                return false;
            }
            CronJob cronJob = (CronJob) other;
            return Intrinsics.areEqual(this.id, cronJob.id) && Intrinsics.areEqual(this.name, cronJob.name) && Intrinsics.areEqual(this.prompt, cronJob.prompt) && Intrinsics.areEqual(this.schedule, cronJob.schedule) && this.enabled == cronJob.enabled && Intrinsics.areEqual(this.state, cronJob.state) && Intrinsics.areEqual(this.lastRunAt, cronJob.lastRunAt) && Intrinsics.areEqual(this.nextRunAt, cronJob.nextRunAt) && Intrinsics.areEqual(this.lastStatus, cronJob.lastStatus);
        }

        public int hashCode() {
            return (((((((((((((((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.prompt.hashCode()) * 31) + this.schedule.hashCode()) * 31) + Boolean.hashCode(this.enabled)) * 31) + this.state.hashCode()) * 31) + this.lastRunAt.hashCode()) * 31) + this.nextRunAt.hashCode()) * 31) + this.lastStatus.hashCode();
        }

        public String toString() {
            return "CronJob(id=" + this.id + ", name=" + this.name + ", prompt=" + this.prompt + ", schedule=" + this.schedule + ", enabled=" + this.enabled + ", state=" + this.state + ", lastRunAt=" + this.lastRunAt + ", nextRunAt=" + this.nextRunAt + ", lastStatus=" + this.lastStatus + ")";
        }

        public CronJob(String str, String str2, String str3, String str4, boolean z, String str5, String str6, String str7, String str8) {
            Intrinsics.checkNotNullParameter(str, "id");
            Intrinsics.checkNotNullParameter(str2, AppMeasurementSdk.ConditionalUserProperty.NAME);
            Intrinsics.checkNotNullParameter(str3, "prompt");
            Intrinsics.checkNotNullParameter(str4, "schedule");
            Intrinsics.checkNotNullParameter(str5, "state");
            Intrinsics.checkNotNullParameter(str6, "lastRunAt");
            Intrinsics.checkNotNullParameter(str7, "nextRunAt");
            Intrinsics.checkNotNullParameter(str8, "lastStatus");
            this.id = str;
            this.name = str2;
            this.prompt = str3;
            this.schedule = str4;
            this.enabled = z;
            this.state = str5;
            this.lastRunAt = str6;
            this.nextRunAt = str7;
            this.lastStatus = str8;
        }

        public final String getId() {
            return this.id;
        }

        public final String getName() {
            return this.name;
        }

        public final String getPrompt() {
            return this.prompt;
        }

        public final String getSchedule() {
            return this.schedule;
        }

        public final boolean getEnabled() {
            return this.enabled;
        }

        public final String getState() {
            return this.state;
        }

        public final String getLastRunAt() {
            return this.lastRunAt;
        }

        public final String getNextRunAt() {
            return this.nextRunAt;
        }

        public final String getLastStatus() {
            return this.lastStatus;
        }
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u0015\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$ParsedSession;", BuildConfig.FLAVOR, "info", "Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "toolCounts", BuildConfig.FLAVOR, BuildConfig.FLAVOR, BuildConfig.FLAVOR, "<init>", "(Lcom/hermes/android/data/HermesHudRepository$SessionInfo;Ljava/util/Map;)V", "getInfo", "()Lcom/hermes/android/data/HermesHudRepository$SessionInfo;", "getToolCounts", "()Ljava/util/Map;", "component1", "component2", "copy", "equals", BuildConfig.FLAVOR, "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    private static final /* data */ class ParsedSession {
        private final SessionInfo info;
        private final Map<String, Integer> toolCounts;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ParsedSession copy$default(ParsedSession parsedSession, SessionInfo sessionInfo, Map map, int i, Object obj) {
            if ((i & 1) != 0) {
                sessionInfo = parsedSession.info;
            }
            if ((i & 2) != 0) {
                map = parsedSession.toolCounts;
            }
            return parsedSession.copy(sessionInfo, map);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final SessionInfo getInfo() {
            return this.info;
        }

        public final Map<String, Integer> component2() {
            return this.toolCounts;
        }

        public final ParsedSession copy(SessionInfo info, Map<String, Integer> toolCounts) {
            Intrinsics.checkNotNullParameter(info, "info");
            Intrinsics.checkNotNullParameter(toolCounts, "toolCounts");
            return new ParsedSession(info, toolCounts);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ParsedSession)) {
                return false;
            }
            ParsedSession parsedSession = (ParsedSession) other;
            return Intrinsics.areEqual(this.info, parsedSession.info) && Intrinsics.areEqual(this.toolCounts, parsedSession.toolCounts);
        }

        public int hashCode() {
            return (this.info.hashCode() * 31) + this.toolCounts.hashCode();
        }

        public String toString() {
            return "ParsedSession(info=" + this.info + ", toolCounts=" + this.toolCounts + ")";
        }

        public ParsedSession(SessionInfo sessionInfo, Map<String, Integer> map) {
            Intrinsics.checkNotNullParameter(sessionInfo, "info");
            Intrinsics.checkNotNullParameter(map, "toolCounts");
            this.info = sessionInfo;
            this.toolCounts = map;
        }

        public final SessionInfo getInfo() {
            return this.info;
        }

        public final Map<String, Integer> getToolCounts() {
            return this.toolCounts;
        }
    }

    public final HudOverview collectOverview() throws Throwable {
        Log.d(TAG, "collectOverview: hermesDir=" + this.hermesDir.getAbsolutePath() + " exists=" + this.hermesDir.exists());
        if (this.hermesDir.exists()) {
            String[] list = this.hermesDir.list();
            Log.d(TAG, "contents=" + (list != null ? ArraysKt.joinToString$default(list, (CharSequence) null, (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) null, 63, (Object) null) : null));
        }
        Pair<String, String> config = readConfig();
        List<String> apiKeyNames = readApiKeyNames();
        Triple<Integer, Integer, Integer> tripleSessionTotalsFromDb = sessionTotalsFromDb();
        int i = 0;
        if (tripleSessionTotalsFromDb == null) {
            List<ParsedSession> listLoadAllSessions = loadAllSessions();
            Integer numValueOf = Integer.valueOf(listLoadAllSessions.size());
            List<ParsedSession> list2 = listLoadAllSessions;
            Iterator<T> it = list2.iterator();
            int messageCount = 0;
            while (it.hasNext()) {
                messageCount += ((ParsedSession) it.next()).getInfo().getMessageCount();
            }
            Integer numValueOf2 = Integer.valueOf(messageCount);
            Iterator<T> it2 = list2.iterator();
            int toolCallCount = 0;
            while (it2.hasNext()) {
                toolCallCount += ((ParsedSession) it2.next()).getInfo().getToolCallCount();
            }
            tripleSessionTotalsFromDb = new Triple<>(numValueOf, numValueOf2, Integer.valueOf(toolCallCount));
        }
        int iIntValue = ((Number) tripleSessionTotalsFromDb.component1()).intValue();
        int iIntValue2 = ((Number) tripleSessionTotalsFromDb.component2()).intValue();
        int iIntValue3 = ((Number) tripleSessionTotalsFromDb.component3()).intValue();
        Pair<Integer, Integer> memoryStats = readMemoryStats(new File(this.hermesDir, "memories/MEMORY.md"), 2200);
        Pair<Integer, Integer> memoryStats2 = readMemoryStats(new File(this.hermesDir, "memories/USER.md"), 1375);
        Pair<Integer, Integer> pairCountSkills = countSkills();
        List<CronJob> cronJobs = readCronJobs();
        String soulSummary = readSoulSummary();
        boolean zCheckGateway = checkGateway();
        Log.d(TAG, "sessions=" + iIntValue + " msgs=" + iIntValue2 + " tools=" + iIntValue3 + " skills=" + pairCountSkills.getFirst());
        String str = (String) config.getFirst();
        String str2 = (String) config.getSecond();
        int iIntValue4 = ((Number) memoryStats.getFirst()).intValue();
        int iIntValue5 = ((Number) memoryStats.getSecond()).intValue();
        int iIntValue6 = ((Number) memoryStats2.getFirst()).intValue();
        int iIntValue7 = ((Number) pairCountSkills.getFirst()).intValue();
        int iIntValue8 = ((Number) pairCountSkills.getSecond()).intValue();
        int size = cronJobs.size();
        List<CronJob> list3 = cronJobs;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator<T> it3 = list3.iterator();
            while (it3.hasNext()) {
                if (((CronJob) it3.next()).getEnabled() && (i = i + 1) < 0) {
                    CollectionsKt.throwCountOverflow();
                }
            }
        }
        return new HudOverview(str, str2, apiKeyNames, iIntValue, iIntValue2, iIntValue3, iIntValue4, iIntValue5, iIntValue6, iIntValue7, iIntValue8, size, i, soulSummary, zCheckGateway);
    }

    public static /* synthetic */ List recentSessions$default(HermesHudRepository hermesHudRepository, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 20;
        }
        return hermesHudRepository.recentSessions(i);
    }

    public final List<SessionInfo> recentSessions(int limit) throws Throwable {
        List<SessionInfo> listRecentSessionsFromDb = recentSessionsFromDb(limit);
        if (listRecentSessionsFromDb != null) {
            return listRecentSessionsFromDb;
        }
        List<ParsedSession> listLoadAllSessions = loadAllSessions();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listLoadAllSessions, 10));
        Iterator<T> it = listLoadAllSessions.iterator();
        while (it.hasNext()) {
            arrayList.add(((ParsedSession) it.next()).getInfo());
        }
        return CollectionsKt.take(CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.hermes.android.data.HermesHudRepository$recentSessions$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((HermesHudRepository.SessionInfo) t2).getSessionStart(), ((HermesHudRepository.SessionInfo) t).getSessionStart());
            }
        }), limit);
    }

    public static /* synthetic */ List topTools$default(HermesHudRepository hermesHudRepository, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 15;
        }
        return hermesHudRepository.topTools(i);
    }

    public final List<ToolUsage> topTools(int limit) throws Throwable {
        List<ToolUsage> list = topToolsFromDb(limit);
        if (list != null) {
            return list;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it = loadAllSessions().iterator();
        while (it.hasNext()) {
            for (Map.Entry<String, Integer> entry : ((ParsedSession) it.next()).getToolCounts().entrySet()) {
                String key = entry.getKey();
                int iIntValue = entry.getValue().intValue();
                Integer num = (Integer) linkedHashMap.get(key);
                linkedHashMap.put(key, Integer.valueOf((num != null ? num.intValue() : 0) + iIntValue));
            }
        }
        List<Map.Entry> listTake = CollectionsKt.take(CollectionsKt.sortedWith(linkedHashMap.entrySet(), new Comparator() { // from class: com.hermes.android.data.HermesHudRepository$topTools$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
            }
        }), limit);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listTake, 10));
        for (Map.Entry entry2 : listTake) {
            arrayList.add(new ToolUsage((String) entry2.getKey(), ((Number) entry2.getValue()).intValue()));
        }
        return arrayList;
    }

    public final List<MemoryEntry> memoryEntries() {
        File file = new File(this.hermesDir, "memories/MEMORY.md");
        if (!file.exists()) {
            return CollectionsKt.emptyList();
        }
        try {
            List listSplit$default = StringsKt.split$default(FilesKt.readText$default(file, (Charset) null, 1, (Object) null), new String[]{"§"}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt.trim((String) it.next()).toString());
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (((String) obj).length() > 0) {
                    arrayList2.add(obj);
                }
            }
            ArrayList<String> arrayList3 = arrayList2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
            for (String str : arrayList3) {
                arrayList4.add(new MemoryEntry(str, classifyMemory(str)));
            }
            return arrayList4;
        } catch (Exception e) {
            Log.w(TAG, "memoryEntries failed: " + e.getMessage());
            return CollectionsKt.emptyList();
        }
    }

    public final List<CronJob> cronJobs() {
        return readCronJobs();
    }

    public static /* synthetic */ List readSessionMessages$default(HermesHudRepository hermesHudRepository, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 50;
        }
        return hermesHudRepository.readSessionMessages(str, i);
    }

    public final List<ChatMessage> readSessionMessages(final String sessionId, int limit) throws Throwable {
        File file;
        File file2;
        boolean zAreEqual;
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        List<ChatMessage> sessionMessagesFromDb = readSessionMessagesFromDb(sessionId, limit);
        if (sessionMessagesFromDb != null) {
            return sessionMessagesFromDb;
        }
        File file3 = new File(this.hermesDir, "sessions");
        if (!file3.isDirectory()) {
            return CollectionsKt.emptyList();
        }
        File[] fileArrListFiles = file3.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda1
            @Override // java.io.FileFilter
            public final boolean accept(File file4) {
                return HermesHudRepository.readSessionMessages$lambda$16(sessionId, file4);
            }
        });
        if (fileArrListFiles == null || (file = (File) ArraysKt.firstOrNull(fileArrListFiles)) == null) {
            File[] fileArrListFiles2 = file3.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda2
                @Override // java.io.FileFilter
                public final boolean accept(File file4) {
                    return HermesHudRepository.readSessionMessages$lambda$17(file4);
                }
            });
            if (fileArrListFiles2 != null) {
                int length = fileArrListFiles2.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        file2 = null;
                        break;
                    }
                    file2 = fileArrListFiles2[i];
                    try {
                        Intrinsics.checkNotNull(file2);
                        zAreEqual = Intrinsics.areEqual(new JSONObject(FilesKt.readText$default(file2, (Charset) null, 1, (Object) null)).optString("session_id", BuildConfig.FLAVOR), sessionId);
                    } catch (Exception unused) {
                        zAreEqual = false;
                    }
                    if (zAreEqual) {
                        break;
                    }
                    i++;
                }
                file = file2;
            } else {
                file = null;
            }
            if (file == null) {
                return CollectionsKt.emptyList();
            }
        }
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(FilesKt.readText$default(file, (Charset) null, 1, (Object) null)).optJSONArray("messages");
            if (jSONArrayOptJSONArray == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            int iMin = Math.min(jSONArrayOptJSONArray.length(), limit);
            for (int i2 = 0; i2 < iMin; i2++) {
                JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i2);
                String strOptString = jSONObject.optString("role", BuildConfig.FLAVOR);
                String strOptString2 = jSONObject.optString("content", BuildConfig.FLAVOR);
                Intrinsics.checkNotNull(strOptString);
                if (strOptString.length() > 0) {
                    Intrinsics.checkNotNull(strOptString2);
                    if (strOptString2.length() > 0) {
                        arrayList.add(new ChatMessage(strOptString, strOptString2, null, 4, null));
                    }
                }
            }
            return arrayList;
        } catch (Exception e) {
            Log.w(TAG, "readSessionMessages: " + e.getMessage());
            return CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean readSessionMessages$lambda$16(String str, File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (!StringsKt.endsWith$default(name, ".json", false, 2, (Object) null)) {
            return false;
        }
        String name2 = file.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
        return StringsKt.contains$default(name2, str, false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean readSessionMessages$lambda$17(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.endsWith$default(name, ".json", false, 2, (Object) null);
    }

    private final boolean deleteSessionJson(final String sessionId) {
        File file;
        File file2;
        boolean zAreEqual;
        File file3 = new File(this.hermesDir, "sessions");
        if (!file3.isDirectory()) {
            return false;
        }
        File[] fileArrListFiles = file3.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda4
            @Override // java.io.FileFilter
            public final boolean accept(File file4) {
                return HermesHudRepository.deleteSessionJson$lambda$21(sessionId, file4);
            }
        });
        if (fileArrListFiles == null || (file = (File) ArraysKt.firstOrNull(fileArrListFiles)) == null) {
            File[] fileArrListFiles2 = file3.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda5
                @Override // java.io.FileFilter
                public final boolean accept(File file4) {
                    return HermesHudRepository.deleteSessionJson$lambda$22(file4);
                }
            });
            if (fileArrListFiles2 != null) {
                int length = fileArrListFiles2.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        file2 = null;
                        break;
                    }
                    file2 = fileArrListFiles2[i];
                    try {
                        Intrinsics.checkNotNull(file2);
                        zAreEqual = Intrinsics.areEqual(new JSONObject(FilesKt.readText$default(file2, (Charset) null, 1, (Object) null)).optString("session_id", BuildConfig.FLAVOR), sessionId);
                    } catch (Exception unused) {
                        zAreEqual = false;
                    }
                    if (zAreEqual) {
                        break;
                    }
                    i++;
                }
                file = file2;
            } else {
                file = null;
            }
            if (file == null) {
                return false;
            }
        }
        this.cachedSessions = null;
        return file.delete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean deleteSessionJson$lambda$21(String str, File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        if (!StringsKt.endsWith$default(name, ".json", false, 2, (Object) null)) {
            return false;
        }
        String name2 = file.getName();
        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
        return StringsKt.contains$default(name2, str, false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean deleteSessionJson$lambda$22(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.endsWith$default(name, ".json", false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File stateDbFile() {
        return new File(this.hermesDir, "state.db");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final <T> T withStateDb(boolean writable, Function1<? super SQLiteDatabase, ? extends T> body) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Object obj;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        ?? StateDbFile = stateDbFile();
        SQLiteDatabase sQLiteDatabase3 = (T) null;
        if (!StateDbFile.exists()) {
            return null;
        }
        try {
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(StateDbFile.getAbsolutePath(), null, !writable ? 1 : 0);
                try {
                    Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                    SQLiteDatabase sQLiteDatabase4 = (T) body.invoke(sQLiteDatabaseOpenDatabase);
                    InlineMarker.finallyStart(1);
                    sQLiteDatabase2 = sQLiteDatabaseOpenDatabase;
                    sQLiteDatabase = sQLiteDatabase4;
                    StateDbFile = sQLiteDatabaseOpenDatabase;
                    obj = sQLiteDatabase4;
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "state.db " + (writable ? "write" : "read") + " failed: " + e.getMessage());
                    InlineMarker.finallyStart(1);
                    sQLiteDatabase2 = sQLiteDatabaseOpenDatabase;
                    sQLiteDatabase = sQLiteDatabase3;
                    StateDbFile = sQLiteDatabaseOpenDatabase;
                    obj = sQLiteDatabase3;
                    if (sQLiteDatabaseOpenDatabase != null) {
                    }
                    InlineMarker.finallyEnd(1);
                    return (T) obj;
                }
            } catch (Throwable th) {
                th = th;
                sQLiteDatabase3 = (T) StateDbFile;
                InlineMarker.finallyStart(1);
                if (sQLiteDatabase3 != null) {
                    sQLiteDatabase3.close();
                }
                InlineMarker.finallyEnd(1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            sQLiteDatabaseOpenDatabase = null;
        } catch (Throwable th2) {
            th = th2;
            InlineMarker.finallyStart(1);
            if (sQLiteDatabase3 != null) {
            }
            InlineMarker.finallyEnd(1);
            throw th;
        }
        if (sQLiteDatabaseOpenDatabase != null) {
            sQLiteDatabase2.close();
            StateDbFile = sQLiteDatabase2;
            obj = sQLiteDatabase;
        }
        InlineMarker.finallyEnd(1);
        return (T) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    static /* synthetic */ Object withStateDb$default(HermesHudRepository hermesHudRepository, boolean z, Function1 function1, int i, Object obj) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        SQLiteDatabase sQLiteDatabase;
        ?? r4 = z;
        if ((i & 1) != 0) {
            r4 = 0;
        }
        ?? StateDbFile = hermesHudRepository.stateDbFile();
        ?? r1 = 0;
        objInvoke = null;
        Object objInvoke = null;
        try {
            if (!StateDbFile.exists()) {
                return null;
            }
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(StateDbFile.getAbsolutePath(), null, r4 ^ 1);
                try {
                    Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                    objInvoke = function1.invoke(sQLiteDatabaseOpenDatabase);
                    InlineMarker.finallyStart(1);
                    sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                    StateDbFile = sQLiteDatabaseOpenDatabase;
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "state.db " + (r4 != 0 ? "write" : "read") + " failed: " + e.getMessage());
                    InlineMarker.finallyStart(1);
                    sQLiteDatabase = sQLiteDatabaseOpenDatabase;
                    StateDbFile = sQLiteDatabaseOpenDatabase;
                    if (sQLiteDatabaseOpenDatabase != null) {
                    }
                    InlineMarker.finallyEnd(1);
                    return objInvoke;
                }
            } catch (Exception e2) {
                e = e2;
                sQLiteDatabaseOpenDatabase = null;
            } catch (Throwable th) {
                th = th;
            }
            if (sQLiteDatabaseOpenDatabase != null) {
                sQLiteDatabase.close();
                StateDbFile = sQLiteDatabase;
            }
            InlineMarker.finallyEnd(1);
            return objInvoke;
        } catch (Throwable th2) {
            th = th2;
            r1 = StateDbFile;
        }
        InlineMarker.finallyStart(1);
        if (r1 != 0) {
            r1.close();
        }
        InlineMarker.finallyEnd(1);
        throw th;
    }

    private final String epochToIso(double sec) {
        if (sec <= 0.0d) {
            return BuildConfig.FLAVOR;
        }
        String str = ISO_FORMAT.format(new Date((long) (sec * ((double) 1000))));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    private final String firstUserMessageFromDb(SQLiteDatabase db, String sessionId) {
        Cursor cursorRawQuery = db.rawQuery("SELECT content FROM messages WHERE session_id=? AND role='user' ORDER BY timestamp, id LIMIT 1", new String[]{sessionId});
        try {
            Cursor cursor = cursorRawQuery;
            boolean zMoveToNext = cursor.moveToNext();
            String str = BuildConfig.FLAVOR;
            if (zMoveToNext) {
                String string = cursor.getString(0);
                if (string != null) {
                    str = string;
                }
            }
            CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
            return str;
        } finally {
        }
    }

    private final List<ChatMessage> readMessagesNewestChrono(SQLiteDatabase db, String sessionId, int limit) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQuery = db.rawQuery("SELECT role, content, tool_name FROM (SELECT role, content, tool_name, timestamp, id FROM messages WHERE session_id=? ORDER BY timestamp DESC, id DESC LIMIT ?) ORDER BY timestamp ASC, id ASC", new String[]{sessionId, String.valueOf(limit)});
        try {
            Cursor cursor = cursorRawQuery;
            while (cursor.moveToNext()) {
                String string = cursor.getString(0);
                String str = BuildConfig.FLAVOR;
                if (string == null) {
                    string = BuildConfig.FLAVOR;
                }
                String string2 = cursor.getString(1);
                if (string2 != null) {
                    str = string2;
                }
                if (string.length() > 0 && str.length() > 0) {
                    arrayList.add(new ChatMessage(string, str, cursor.getString(2)));
                }
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
            return arrayList;
        } finally {
        }
    }

    public static /* synthetic */ List chatMessages$default(HermesHudRepository hermesHudRepository, String str, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 200;
        }
        return hermesHudRepository.chatMessages(str, i);
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0001\u0004\u0006\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", BuildConfig.FLAVOR, "Settled", "MidTurn", "Stale", "Unavailable", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Stale;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public interface TurnSettle {

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Settled;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "messages", BuildConfig.FLAVOR, "Lcom/hermes/android/data/HermesHudRepository$ChatMessage;", "<init>", "(Ljava/util/List;)V", "getMessages", "()Ljava/util/List;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", BuildConfig.FLAVOR, "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Settled implements TurnSettle {
            public static final int $stable = 8;
            private final List<ChatMessage> messages;

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Settled copy$default(Settled settled, List list, int i, Object obj) {
                if ((i & 1) != 0) {
                    list = settled.messages;
                }
                return settled.copy(list);
            }

            public final List<ChatMessage> component1() {
                return this.messages;
            }

            public final Settled copy(List<ChatMessage> messages) {
                Intrinsics.checkNotNullParameter(messages, "messages");
                return new Settled(messages);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Settled) && Intrinsics.areEqual(this.messages, ((Settled) other).messages);
            }

            public int hashCode() {
                return this.messages.hashCode();
            }

            public String toString() {
                return "Settled(messages=" + this.messages + ")";
            }

            public Settled(List<ChatMessage> list) {
                Intrinsics.checkNotNullParameter(list, "messages");
                this.messages = list;
            }

            public final List<ChatMessage> getMessages() {
                return this.messages;
            }
        }

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$TurnSettle$MidTurn;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class MidTurn implements TurnSettle {
            public static final int $stable = 0;
            public static final MidTurn INSTANCE = new MidTurn();

            private MidTurn() {
            }
        }

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Stale;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Stale implements TurnSettle {
            public static final int $stable = 0;
            public static final Stale INSTANCE = new Stale();

            private Stale() {
            }
        }

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$TurnSettle$Unavailable;", "Lcom/hermes/android/data/HermesHudRepository$TurnSettle;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Unavailable implements TurnSettle {
            public static final int $stable = 0;
            public static final Unavailable INSTANCE = new Unavailable();

            private Unavailable() {
            }
        }
    }

    public static /* synthetic */ TurnSettle settleCheck$default(HermesHudRepository hermesHudRepository, String str, double d, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 200;
        }
        return hermesHudRepository.settleCheck(str, d, i);
    }

    /* JADX INFO: compiled from: HermesHudRepository.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", BuildConfig.FLAVOR, "Found", "None", "Unavailable", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution$None;", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Unavailable;", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
    public interface SessionResolution {

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Found;", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", "id", BuildConfig.FLAVOR, "<init>", "(Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "component1", "copy", "equals", BuildConfig.FLAVOR, "other", BuildConfig.FLAVOR, "hashCode", BuildConfig.FLAVOR, "toString", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final /* data */ class Found implements SessionResolution {
            public static final int $stable = 0;
            private final String id;

            public static /* synthetic */ Found copy$default(Found found, String str, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = found.id;
                }
                return found.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getId() {
                return this.id;
            }

            public final Found copy(String id) {
                Intrinsics.checkNotNullParameter(id, "id");
                return new Found(id);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Found) && Intrinsics.areEqual(this.id, ((Found) other).id);
            }

            public int hashCode() {
                return this.id.hashCode();
            }

            public String toString() {
                return "Found(id=" + this.id + ")";
            }

            public Found(String str) {
                Intrinsics.checkNotNullParameter(str, "id");
                this.id = str;
            }

            public final String getId() {
                return this.id;
            }
        }

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$SessionResolution$None;", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class None implements SessionResolution {
            public static final int $stable = 0;
            public static final None INSTANCE = new None();

            private None() {
            }
        }

        /* JADX INFO: compiled from: HermesHudRepository.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/hermes/android/data/HermesHudRepository$SessionResolution$Unavailable;", "Lcom/hermes/android/data/HermesHudRepository$SessionResolution;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 0, 0}, xi = Box.SEALBYTES)
        public static final class Unavailable implements SessionResolution {
            public static final int $stable = 0;
            public static final Unavailable INSTANCE = new Unavailable();

            private Unavailable() {
            }
        }
    }

    public static /* synthetic */ SessionResolution resolveNewestSession$default(HermesHudRepository hermesHudRepository, Double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = null;
        }
        return hermesHudRepository.resolveNewestSession(d);
    }

    private final List<ParsedSession> loadAllSessions() {
        File file = new File(this.hermesDir, "sessions");
        if (!file.isDirectory()) {
            return CollectionsKt.emptyList();
        }
        long jLastModified = file.lastModified();
        List<ParsedSession> list = this.cachedSessions;
        if (list != null && this.cacheTimestamp == jLastModified) {
            Intrinsics.checkNotNull(list);
            return list;
        }
        File[] fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda3
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return HermesHudRepository.loadAllSessions$lambda$40(file2);
            }
        });
        if (fileArrListFiles == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (File file2 : fileArrListFiles) {
            Intrinsics.checkNotNull(file2);
            ParsedSession sessionFile = parseSessionFile(file2);
            if (sessionFile != null) {
                arrayList.add(sessionFile);
            }
        }
        ArrayList arrayList2 = arrayList;
        this.cachedSessions = arrayList2;
        this.cacheTimestamp = jLastModified;
        Log.d(TAG, "Loaded " + arrayList2.size() + " session files from " + file.getAbsolutePath());
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean loadAllSessions$lambda$40(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.endsWith$default(name, ".json", false, 2, (Object) null);
    }

    private final ParsedSession parseSessionFile(File file) {
        boolean z;
        String strOptString;
        try {
            z = true;
        } catch (Exception e) {
            e = e;
        }
        try {
            JSONObject jSONObject = new JSONObject(FilesKt.readText$default(file, (Charset) null, 1, (Object) null));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("messages");
            if (jSONArrayOptJSONArray == null) {
                jSONArrayOptJSONArray = new JSONArray();
            }
            int iOptInt = jSONObject.optInt("message_count", jSONArrayOptJSONArray.length());
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int length = jSONArrayOptJSONArray.length();
            String strTake = BuildConfig.FLAVOR;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                JSONObject jSONObject2 = jSONArrayOptJSONArray.getJSONObject(i);
                if (Intrinsics.areEqual(jSONObject2.optString("role", BuildConfig.FLAVOR), "user") && strTake.length() == 0) {
                    String strOptString2 = jSONObject2.optString("content", BuildConfig.FLAVOR);
                    Intrinsics.checkNotNullExpressionValue(strOptString2, "optString(...)");
                    strTake = StringsKt.take(strOptString2, 100);
                }
                JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("tool_calls");
                if (jSONArrayOptJSONArray2 != null) {
                    int length2 = jSONArrayOptJSONArray2.length();
                    int i3 = 0;
                    while (i3 < length2) {
                        i2++;
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray2.getJSONObject(i3).optJSONObject("function");
                        String str = "?";
                        if (jSONObjectOptJSONObject != null && (strOptString = jSONObjectOptJSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.NAME, "?")) != null) {
                            str = strOptString;
                        }
                        Integer num = (Integer) linkedHashMap.get(str);
                        linkedHashMap.put(str, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
                        i3++;
                        z = true;
                    }
                }
                i++;
                z = z;
            }
            String strOptString3 = jSONObject.optString("session_id", FilesKt.getNameWithoutExtension(file));
            Intrinsics.checkNotNullExpressionValue(strOptString3, "optString(...)");
            String strOptString4 = jSONObject.optString("model", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString4, "optString(...)");
            String strOptString5 = jSONObject.optString("platform", "cli");
            Intrinsics.checkNotNullExpressionValue(strOptString5, "optString(...)");
            String strOptString6 = jSONObject.optString("session_start", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString6, "optString(...)");
            String strOptString7 = jSONObject.optString("last_updated", BuildConfig.FLAVOR);
            Intrinsics.checkNotNullExpressionValue(strOptString7, "optString(...)");
            return new ParsedSession(new SessionInfo(strOptString3, strOptString4, strOptString5, strOptString6, strOptString7, iOptInt, i2, strTake), linkedHashMap);
        } catch (Exception e2) {
            e = e2;
            Log.w(TAG, "parseSessionFile " + file.getName() + ": " + e.getMessage());
            return null;
        }
    }

    private final Pair<String, String> readConfig() {
        String string;
        String string2;
        File file = new File(this.hermesDir, "config.yaml");
        if (!file.exists()) {
            return TuplesKt.to(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        }
        try {
            Map map = (Map) new Yaml().load(FilesKt.readText$default(file, (Charset) null, 1, (Object) null));
            if (map == null) {
                return TuplesKt.to(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            }
            Object obj = map.get("model");
            Map map2 = obj instanceof Map ? (Map) obj : null;
            if (map2 == null) {
                return TuplesKt.to(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
            }
            Object obj2 = map2.get("provider");
            if (obj2 == null || (string = obj2.toString()) == null) {
                string = BuildConfig.FLAVOR;
            }
            Object obj3 = map2.get(MoaNormalize.DEFAULT_PRESET_NAME);
            if (obj3 == null || (string2 = obj3.toString()) == null) {
                string2 = BuildConfig.FLAVOR;
            }
            return TuplesKt.to(string, string2);
        } catch (Exception e) {
            Log.w(TAG, "readConfig: " + e.getMessage());
            return TuplesKt.to(BuildConfig.FLAVOR, BuildConfig.FLAVOR);
        }
    }

    private final List<String> readApiKeyNames() {
        int iIndexOf$default;
        ArrayList arrayList = new ArrayList();
        File file = new File(this.hermesDir, ".env");
        if (file.exists()) {
            try {
                Iterator it = FilesKt.readLines$default(file, (Charset) null, 1, (Object) null).iterator();
                while (it.hasNext()) {
                    String string = StringsKt.trim((String) it.next()).toString();
                    if (string.length() != 0 && !StringsKt.startsWith$default(string, "#", false, 2, (Object) null) && (iIndexOf$default = StringsKt.indexOf$default(string, '=', 0, false, 6, (Object) null)) > 0) {
                        String strSubstring = string.substring(0, iIndexOf$default);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                        String string2 = StringsKt.trim(strSubstring).toString();
                        String strSubstring2 = string.substring(iIndexOf$default + 1);
                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                        if (!StringsKt.isBlank(StringsKt.trim(strSubstring2).toString())) {
                            arrayList.add(string2);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> readMemoryStats(File file, int maxChars) {
        int i;
        if (!file.exists()) {
            return TuplesKt.to(0, 0);
        }
        try {
            String text$default = FilesKt.readText$default(file, (Charset) null, 1, (Object) null);
            List listSplit$default = StringsKt.split$default(text$default, new String[]{"§"}, false, 0, 6, (Object) null);
            if ((listSplit$default instanceof Collection) && listSplit$default.isEmpty()) {
                i = 0;
            } else {
                Iterator it = listSplit$default.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (StringsKt.trim((String) it.next()).toString().length() > 0 && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            return TuplesKt.to(Integer.valueOf(i), Integer.valueOf(maxChars > 0 ? RangesKt.coerceAtMost((text$default.length() * 100) / maxChars, 100) : 0));
        } catch (Exception unused) {
            return TuplesKt.to(0, 0);
        }
    }

    private final Pair<Integer, Integer> countSkills() {
        File file = new File(this.hermesDir, "skills");
        int i = 0;
        if (!file.isDirectory()) {
            return TuplesKt.to(0, 0);
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = SequencesKt.filter(FilesKt.walkTopDown(file), new Function1() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda0
            public final Object invoke(Object obj) {
                return Boolean.valueOf(HermesHudRepository.countSkills$lambda$44((File) obj));
            }
        }).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2++;
            arrayList.add(Long.valueOf(((File) it.next()).lastModified()));
        }
        if (i2 > 0) {
            ArrayList arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : arrayList2) {
                Long lValueOf = Long.valueOf(((Number) obj).longValue() / ((long) 60000));
                Object obj2 = linkedHashMap.get(lValueOf);
                if (obj2 == null) {
                    obj2 = (List) new ArrayList();
                    linkedHashMap.put(lValueOf, obj2);
                }
                ((List) obj2).add(obj);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                if (((List) entry.getValue()).size() >= 5) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            Set setKeySet = linkedHashMap2.keySet();
            if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (!setKeySet.contains(Long.valueOf(((Number) it2.next()).longValue() / ((long) 60000))) && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
        }
        return TuplesKt.to(Integer.valueOf(i2), Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean countSkills$lambda$44(File file) {
        Intrinsics.checkNotNullParameter(file, "it");
        return Intrinsics.areEqual(file.getName(), "SKILL.md");
    }

    private final List<CronJob> readCronJobs() {
        String str = "optString(...)";
        File file = new File(this.hermesDir, "cron/jobs.json");
        if (!file.exists()) {
            return CollectionsKt.emptyList();
        }
        boolean z = true;
        try {
            JSONArray jSONArrayOptJSONArray = new JSONObject(FilesKt.readText$default(file, (Charset) null, 1, (Object) null)).optJSONArray("jobs");
            if (jSONArrayOptJSONArray == null) {
                return CollectionsKt.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            int length = jSONArrayOptJSONArray.length();
            int i = 0;
            while (i < length) {
                JSONObject jSONObject = jSONArrayOptJSONArray.getJSONObject(i);
                String strOptString = jSONObject.optString("id", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString, str);
                String strOptString2 = jSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.NAME, BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString2, str);
                String strOptString3 = jSONObject.optString("prompt", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString3, str);
                String strOptString4 = jSONObject.optString("schedule_display", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString4, str);
                boolean zOptBoolean = jSONObject.optBoolean("enabled", z);
                String strOptString5 = jSONObject.optString("state", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString5, str);
                String strOptString6 = jSONObject.optString("last_run_at", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString6, str);
                JSONArray jSONArray = jSONArrayOptJSONArray;
                String strOptString7 = jSONObject.optString("next_run_at", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString7, str);
                String strOptString8 = jSONObject.optString("last_status", BuildConfig.FLAVOR);
                Intrinsics.checkNotNullExpressionValue(strOptString8, str);
                String str2 = str;
                arrayList.add(new CronJob(strOptString, strOptString2, strOptString3, strOptString4, zOptBoolean, strOptString5, strOptString6, strOptString7, strOptString8));
                i++;
                jSONArrayOptJSONArray = jSONArray;
                str = str2;
                z = true;
            }
            return arrayList;
        } catch (Exception e) {
            Log.w(TAG, "readCronJobs: " + e.getMessage());
            return CollectionsKt.emptyList();
        }
    }

    private final String readSoulSummary() {
        File file = new File(this.hermesDir, "SOUL.md");
        if (!file.exists()) {
            return BuildConfig.FLAVOR;
        }
        try {
            List lines$default = FilesKt.readLines$default(file, (Charset) null, 1, (Object) null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : lines$default) {
                String str = (String) obj;
                if (!StringsKt.isBlank(str) && !StringsKt.startsWith$default(str, "#", false, 2, (Object) null) && !StringsKt.startsWith$default(str, "---", false, 2, (Object) null)) {
                    arrayList.add(obj);
                }
            }
            String str2 = (String) CollectionsKt.firstOrNull(arrayList);
            if (str2 == null) {
                return BuildConfig.FLAVOR;
            }
            String strTake = StringsKt.take(str2, 120);
            return strTake != null ? strTake : BuildConfig.FLAVOR;
        } catch (Exception unused) {
            return BuildConfig.FLAVOR;
        }
    }

    private final boolean checkGateway() {
        List groupValues;
        String str;
        File file = new File(this.hermesDir, "gateway.pid");
        if (!file.exists()) {
            return false;
        }
        Integer intOrNull = null;
        try {
            MatchResult matchResultFind$default = Regex.find$default(new Regex("\"pid\"\\s*:\\s*(\\d+)"), FilesKt.readText$default(file, (Charset) null, 1, (Object) null), 0, 2, (Object) null);
            if (matchResultFind$default != null && (groupValues = matchResultFind$default.getGroupValues()) != null && (str = (String) groupValues.get(1)) != null) {
                intOrNull = StringsKt.toIntOrNull(str);
            }
            if (intOrNull != null) {
                return new File("/proc/" + intOrNull).exists();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private final String classifyMemory(String text) {
        String lowerCase = text.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return containsAny(lowerCase, "gotcha", "don't", "wrong", "verify before", "mistake", "incorrect") ? "correction" : containsAny(lowerCase, "wsl", "ubuntu", "installed", BackendPreference.VALUE_GPU, "api_key", "path", "version") ? "environment" : containsAny(lowerCase, "todo:", "needs to", "not yet", "should") ? "todo" : containsAny(lowerCase, "project", "~/projects/", "repo", "repository") ? "project" : containsAny(lowerCase, "preferred", "expects", "familiar", "default model", "always use") ? "preference" : "other";
    }

    public final String formatSessionTime(String isoTime) {
        Intrinsics.checkNotNullParameter(isoTime, "isoTime");
        if (isoTime.length() == 0) {
            return "—";
        }
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US).parse(StringsKt.substringBefore$default(isoTime, ".", (String) null, 2, (Object) null));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd HH:mm", Locale.getDefault());
            Intrinsics.checkNotNull(date);
            return simpleDateFormat.format(date);
        } catch (Exception unused) {
            return StringsKt.replace$default(StringsKt.take(isoTime, 16), "T", " ", false, 4, (Object) null);
        }
    }

    public final String getLastSessionBanner() throws Throwable {
        File[] fileArrListFiles;
        SessionInfo sessionInfo;
        List<SessionInfo> listRecentSessionsFromDb = recentSessionsFromDb(1);
        if (listRecentSessionsFromDb != null && (sessionInfo = (SessionInfo) CollectionsKt.firstOrNull(listRecentSessionsFromDb)) != null) {
            return formatSessionBanner(sessionInfo, CollectionsKt.joinToString$default(topToolsForSessionFromDb(sessionInfo.getId(), 3), ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda6
                public final Object invoke(Object obj) {
                    return HermesHudRepository.getLastSessionBanner$lambda$52$lambda$51((HermesHudRepository.ToolUsage) obj);
                }
            }, 30, (Object) null));
        }
        File file = new File(this.hermesDir, "sessions");
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles(new FileFilter() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda7
            @Override // java.io.FileFilter
            public final boolean accept(File file2) {
                return HermesHudRepository.getLastSessionBanner$lambda$53(file2);
            }
        })) == null || fileArrListFiles.length == 0) {
            return null;
        }
        File file2 = (File) CollectionsKt.first(ArraysKt.sortedWith(fileArrListFiles, new Comparator() { // from class: com.hermes.android.data.HermesHudRepository$getLastSessionBanner$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(((File) t2).getName(), ((File) t).getName());
            }
        }));
        Intrinsics.checkNotNull(file2);
        ParsedSession sessionFile = parseSessionFile(file2);
        if (sessionFile == null) {
            return null;
        }
        return formatSessionBanner(sessionFile.getInfo(), CollectionsKt.joinToString$default(CollectionsKt.take(CollectionsKt.sortedWith(sessionFile.getToolCounts().entrySet(), new Comparator() { // from class: com.hermes.android.data.HermesHudRepository$getLastSessionBanner$$inlined$sortedByDescending$2
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((Integer) ((Map.Entry) t2).getValue(), (Integer) ((Map.Entry) t).getValue());
            }
        }), 3), ", ", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.hermes.android.data.HermesHudRepository$$ExternalSyntheticLambda8
            public final Object invoke(Object obj) {
                return HermesHudRepository.getLastSessionBanner$lambda$56((Map.Entry) obj);
            }
        }, 30, (Object) null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence getLastSessionBanner$lambda$52$lambda$51(ToolUsage toolUsage) {
        Intrinsics.checkNotNullParameter(toolUsage, "it");
        return toolUsage.getName() + "(" + toolUsage.getCount() + ")";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getLastSessionBanner$lambda$53(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt.endsWith$default(name, ".json", false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence getLastSessionBanner$lambda$56(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "it");
        return entry.getKey() + "(" + entry.getValue() + ")";
    }

    private final String formatSessionBanner(SessionInfo s, String topTools) {
        String sessionTime = formatSessionTime(s.getSessionStart());
        String strTake = StringsKt.take(s.getFirstUserMessage(), 60);
        if (s.getFirstUserMessage().length() > 60) {
            strTake = strTake + "...";
        }
        StringBuilder sb = new StringBuilder("\u001b[2m╭─── Last Session ───────────────────────────────╮\u001b[0m\r\n");
        sb.append("\u001b[2m│\u001b[0m \u001b[36m" + sessionTime + "\u001b[0m  \u001b[1m" + s.getModel() + "\u001b[0m\r\n");
        sb.append("\u001b[2m│\u001b[0m \u001b[33m" + strTake + "\u001b[0m\r\n");
        sb.append("\u001b[2m│\u001b[0m " + s.getMessageCount() + " msgs  " + s.getToolCallCount() + " tool calls");
        if (topTools.length() > 0) {
            sb.append("  \u001b[2m[" + topTools + "]\u001b[0m");
        }
        sb.append("\r\n\u001b[2m╰────────────────────────────────────────────────╯\u001b[0m\r\n\r\n");
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean deleteSession(String sessionId) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        File fileStateDbFile = stateDbFile();
        Boolean bool = null;
        bool = null;
        bool = null;
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (fileStateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 0);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabaseOpenDatabase.compileStatement("UPDATE sessions SET archived=1 WHERE id=?");
                        try {
                            SQLiteStatement sQLiteStatement = sQLiteStatementCompileStatement;
                            sQLiteStatement.bindString(1, sessionId);
                            boolean z = sQLiteStatement.executeUpdateDelete() > 0;
                            CloseableKt.closeFinally(sQLiteStatementCompileStatement, (Throwable) null);
                            Boolean boolValueOf = Boolean.valueOf(z);
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            bool = boolValueOf;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(sQLiteStatementCompileStatement, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db write failed: " + e.getMessage());
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (sQLiteDatabase != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            }
            return deleteSessionJson(sessionId) || (bool != null ? bool.booleanValue() : false);
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Triple<Integer, Integer, Integer> sessionTotalsFromDb() throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        File fileStateDbFile = stateDbFile();
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (!fileStateDbFile.exists()) {
                return null;
            }
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                try {
                    Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT COUNT(*), COALESCE(SUM(message_count),0), COALESCE(SUM(tool_call_count),0) FROM sessions WHERE archived=0", null);
                    try {
                        Cursor cursor = cursorRawQuery;
                        cursor.moveToFirst();
                        Triple<Integer, Integer, Integer> triple = new Triple<>(Integer.valueOf(cursor.getInt(0)), Integer.valueOf(cursor.getInt(1)), Integer.valueOf(cursor.getInt(2)));
                        CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        return triple;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(cursorRawQuery, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "state.db read failed: " + e.getMessage());
                    if (sQLiteDatabaseOpenDatabase == null) {
                        return null;
                    }
                    sQLiteDatabaseOpenDatabase.close();
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                sQLiteDatabaseOpenDatabase = null;
            } catch (Throwable th3) {
                th = th3;
                if (sQLiteDatabase != 0) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<ToolUsage> topToolsFromDb(int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        File fileStateDbFile = stateDbFile();
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (!fileStateDbFile.exists()) {
                return null;
            }
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                try {
                    Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                    ArrayList arrayList = new ArrayList();
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT m.tool_name, COUNT(*) FROM messages m JOIN sessions s ON s.id = m.session_id AND s.archived=0 WHERE m.role='tool' AND m.tool_name IS NOT NULL AND m.tool_name != '' GROUP BY m.tool_name ORDER BY COUNT(*) DESC LIMIT ?", new String[]{String.valueOf(limit)});
                    try {
                        Cursor cursor = cursorRawQuery;
                        while (cursor.moveToNext()) {
                            String string = cursor.getString(0);
                            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                            arrayList.add(new ToolUsage(string, cursor.getInt(1)));
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(cursorRawQuery, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "state.db read failed: " + e.getMessage());
                    if (sQLiteDatabaseOpenDatabase == null) {
                        return null;
                    }
                    sQLiteDatabaseOpenDatabase.close();
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                sQLiteDatabaseOpenDatabase = null;
            } catch (Throwable th3) {
                th = th3;
                if (sQLiteDatabase != 0) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0111: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:64:0x0111 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0092 A[Catch: all -> 0x00d3, TryCatch #2 {all -> 0x00d3, blocks: (B:7:0x0033, B:8:0x0036, B:10:0x003c, B:13:0x0043, B:15:0x0055, B:21:0x0066, B:23:0x006e, B:24:0x0072, B:27:0x007d, B:29:0x0084, B:37:0x009a, B:40:0x00a5, B:34:0x0092, B:41:0x00c7), top: B:69:0x0033 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final List<SessionInfo> recentSessionsFromDb(int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        File fileStateDbFile = stateDbFile();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            if (!fileStateDbFile.exists()) {
                return null;
            }
            try {
                sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                try {
                    Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                    ArrayList arrayList = new ArrayList();
                    Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT id, model, source, handoff_platform, started_at, ended_at, message_count, tool_call_count, title FROM sessions WHERE archived=0 ORDER BY started_at DESC LIMIT ?", new String[]{String.valueOf(limit)});
                    try {
                        Cursor cursor = cursorRawQuery;
                        while (cursor.moveToNext()) {
                            String string = cursor.getString(0);
                            if (string != null) {
                                double d = cursor.getDouble(4);
                                double d2 = cursor.getDouble(5);
                                String string2 = cursor.getString(8);
                                String string3 = string2 != null ? StringsKt.trim(string2).toString() : null;
                                if (string3 == null) {
                                    string3 = BuildConfig.FLAVOR;
                                }
                                String strFirstUserMessageFromDb = string3;
                                if (StringsKt.isBlank(strFirstUserMessageFromDb)) {
                                    strFirstUserMessageFromDb = firstUserMessageFromDb(sQLiteDatabaseOpenDatabase, string);
                                }
                                String str = strFirstUserMessageFromDb;
                                String string4 = cursor.getString(1);
                                if (string4 == null) {
                                    string4 = BuildConfig.FLAVOR;
                                }
                                String string5 = cursor.getString(3);
                                if (string5 == null) {
                                    string5 = cursor.getString(2);
                                    if (string5 == null) {
                                        string5 = BuildConfig.FLAVOR;
                                    }
                                    String strEpochToIso = epochToIso(d);
                                    if (d2 > 0.0d) {
                                        d = d2;
                                    }
                                    arrayList.add(new SessionInfo(string, string4, string5, strEpochToIso, epochToIso(d), cursor.getInt(6), cursor.getInt(7), str));
                                } else {
                                    if (StringsKt.isBlank(string5)) {
                                        string5 = null;
                                    }
                                    if (string5 == null) {
                                    }
                                    String strEpochToIso2 = epochToIso(d);
                                    if (d2 > 0.0d) {
                                    }
                                    arrayList.add(new SessionInfo(string, string4, string5, strEpochToIso2, epochToIso(d), cursor.getInt(6), cursor.getInt(7), str));
                                }
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        return arrayList;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(cursorRawQuery, th);
                            throw th2;
                        }
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, "state.db read failed: " + e.getMessage());
                    if (sQLiteDatabaseOpenDatabase == null) {
                        return null;
                    }
                    sQLiteDatabaseOpenDatabase.close();
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                sQLiteDatabaseOpenDatabase = null;
            } catch (Throwable th3) {
                th = th3;
                if (sQLiteDatabase2 != null) {
                    sQLiteDatabase2.close();
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase2 = sQLiteDatabase;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r3v6 */
    private final List<ChatMessage> readSessionMessagesFromDb(String sessionId, int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        ?? StateDbFile = stateDbFile();
        List<ChatMessage> list = null;
        list = null;
        list = null;
        ?? r3 = 0;
        try {
            if (StateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(StateDbFile.getAbsolutePath(), null, 1);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        List<ChatMessage> messagesNewestChrono = readMessagesNewestChrono(sQLiteDatabaseOpenDatabase, sessionId, limit);
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        list = messagesNewestChrono;
                        StateDbFile = sQLiteDatabaseOpenDatabase;
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db read failed: " + e.getMessage());
                        StateDbFile = sQLiteDatabaseOpenDatabase;
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                            StateDbFile = sQLiteDatabaseOpenDatabase;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th) {
                    th = th;
                    if (r3 != 0) {
                        r3.close();
                    }
                    throw th;
                }
            }
            return list;
        } catch (Throwable th2) {
            th = th2;
            r3 = StateDbFile;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r3v7 */
    public final List<ChatMessage> chatMessages(String sessionId, int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        ?? StateDbFile = stateDbFile();
        List<ChatMessage> list = null;
        list = null;
        list = null;
        ?? r3 = 0;
        try {
            if (StateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(StateDbFile.getAbsolutePath(), null, 1);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        List<ChatMessage> messagesNewestChrono = readMessagesNewestChrono(sQLiteDatabaseOpenDatabase, sessionId, limit);
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                        list = messagesNewestChrono;
                        StateDbFile = sQLiteDatabaseOpenDatabase;
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db read failed: " + e.getMessage());
                        StateDbFile = sQLiteDatabaseOpenDatabase;
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                            StateDbFile = sQLiteDatabaseOpenDatabase;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th) {
                    th = th;
                    if (r3 != 0) {
                        r3.close();
                    }
                    throw th;
                }
            }
            return list == null ? CollectionsKt.emptyList() : list;
        } catch (Throwable th2) {
            th = th2;
            r3 = StateDbFile;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TurnSettle settleCheck(String sessionId, double sinceEpochSec, int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        TurnSettle.MidTurn settled;
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        File fileStateDbFile = stateDbFile();
        TurnSettle turnSettle = null;
        turnSettle = null;
        turnSettle = null;
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (fileStateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT role, content, tool_calls, timestamp FROM messages WHERE session_id=? ORDER BY timestamp DESC, id DESC LIMIT 1", new String[]{sessionId});
                        try {
                            Cursor cursor = cursorRawQuery;
                            if (cursor.moveToNext()) {
                                String string = cursor.getString(0);
                                String str = BuildConfig.FLAVOR;
                                if (string == null) {
                                    string = BuildConfig.FLAVOR;
                                }
                                String string2 = cursor.getString(1);
                                String string3 = string2 != null ? StringsKt.trim(string2).toString() : null;
                                if (string3 == null) {
                                    string3 = BuildConfig.FLAVOR;
                                }
                                String string4 = cursor.getString(2);
                                String string5 = string4 != null ? StringsKt.trim(string4).toString() : null;
                                if (string5 != null) {
                                    str = string5;
                                }
                                if (cursor.getDouble(3) < sinceEpochSec) {
                                    settled = TurnSettle.Stale.INSTANCE;
                                } else if (Intrinsics.areEqual(string, "assistant") && string3.length() > 0 && str.length() == 0) {
                                    settled = new TurnSettle.Settled(readMessagesNewestChrono(sQLiteDatabaseOpenDatabase, sessionId, limit));
                                } else {
                                    settled = TurnSettle.MidTurn.INSTANCE;
                                }
                                CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                            } else {
                                settled = TurnSettle.Stale.INSTANCE;
                                CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                            }
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            turnSettle = settled;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(cursorRawQuery, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db read failed: " + e.getMessage());
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (sQLiteDatabase != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            }
            return turnSettle == null ? TurnSettle.Unavailable.INSTANCE : turnSettle;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final SessionResolution resolveNewestSession(Double startedAfterSec) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        Pair pair;
        SessionResolution.None found;
        File fileStateDbFile = stateDbFile();
        SessionResolution sessionResolution = null;
        sessionResolution = null;
        sessionResolution = null;
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (fileStateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        if (startedAfterSec != null) {
                            pair = TuplesKt.to("archived=0 AND started_at >= ?", new String[]{startedAfterSec.toString()});
                        } else {
                            pair = TuplesKt.to("archived=0", (Object) null);
                        }
                        Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT id FROM sessions WHERE " + ((String) pair.component1()) + " ORDER BY started_at DESC, rowid DESC LIMIT 1", (String[]) pair.component2());
                        try {
                            Cursor cursor = cursorRawQuery;
                            if (cursor.moveToNext()) {
                                String string = cursor.getString(0);
                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                found = new SessionResolution.Found(string);
                            } else {
                                found = SessionResolution.None.INSTANCE;
                            }
                            CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            sessionResolution = found;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(cursorRawQuery, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db read failed: " + e.getMessage());
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (sQLiteDatabase != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            }
            return sessionResolution == null ? SessionResolution.Unavailable.INSTANCE : sessionResolution;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }

    private final boolean containsAny(String str, String... strArr) {
        for (String str2 : strArr) {
            if (StringsKt.contains$default(str, str2, false, 2, (Object) null)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<ToolUsage> topToolsForSessionFromDb(String sessionId, int limit) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenDatabase;
        File fileStateDbFile = stateDbFile();
        ArrayList arrayList = null;
        arrayList = null;
        arrayList = null;
        SQLiteDatabase sQLiteDatabase = 0;
        try {
            if (fileStateDbFile.exists()) {
                try {
                    sQLiteDatabaseOpenDatabase = SQLiteDatabase.openDatabase(fileStateDbFile.getAbsolutePath(), null, 1);
                    try {
                        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
                        ArrayList arrayList2 = new ArrayList();
                        Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT tool_name, COUNT(*) FROM messages WHERE session_id=? AND role='tool' AND tool_name IS NOT NULL AND tool_name != '' GROUP BY tool_name ORDER BY COUNT(*) DESC LIMIT ?", new String[]{sessionId, String.valueOf(limit)});
                        try {
                            Cursor cursor = cursorRawQuery;
                            while (cursor.moveToNext()) {
                                String string = cursor.getString(0);
                                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                                arrayList2.add(new ToolUsage(string, cursor.getInt(1)));
                            }
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(cursorRawQuery, (Throwable) null);
                            if (sQLiteDatabaseOpenDatabase != null) {
                                sQLiteDatabaseOpenDatabase.close();
                            }
                            arrayList = arrayList2;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(cursorRawQuery, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        Log.w(TAG, "state.db read failed: " + e.getMessage());
                        if (sQLiteDatabaseOpenDatabase != null) {
                            sQLiteDatabaseOpenDatabase.close();
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    sQLiteDatabaseOpenDatabase = null;
                } catch (Throwable th3) {
                    th = th3;
                    if (sQLiteDatabase != 0) {
                        sQLiteDatabase.close();
                    }
                    throw th;
                }
            }
            return arrayList == null ? CollectionsKt.emptyList() : arrayList;
        } catch (Throwable th4) {
            th = th4;
            sQLiteDatabase = fileStateDbFile;
        }
    }
}
