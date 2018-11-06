.class public Lcom/android/internal/telephony/ImsPreference;
.super Ljava/lang/Object;
.source "ImsPreference.java"


# static fields
.field public static final CALLWAITING_PATH_CS_NW:I = 0x1

.field public static final CALLWAITING_PATH_CS_TB:I = 0x2

.field public static final CALLWAITING_PATH_PS_NW:I = 0x10

.field public static final CALLWAITING_PATH_PS_NW_CS_NW:I = 0x11

.field public static final CALLWAITING_PATH_PS_NW_CS_TB:I = 0x12

.field public static final CALLWAITING_PATH_PS_TB:I = 0x20

.field public static final CALLWAITING_PATH_PS_TB_CS_NW:I = 0x21

.field public static final CALLWAITING_PATH_PS_TB_CS_TB:I = 0x22

.field public static final EMERGENCY_DOMAIN_CS:I = 0x1

.field public static final EMERGENCY_DOMAIN_PS:I = 0x0

.field public static final EMERGENCY_DOMAIN_UNKNOWN:I = 0xff

.field public static final IMS_SUPPORT_NONE:I = 0x0

.field public static final IMS_SUPPORT_VOLTE:I = 0x1

.field public static final IMS_SUPPORT_VOLTE_VOWIFI:I = 0x3

.field public static final IMS_SUPPORT_VOWIFI:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPreference"

.field public static final SMS_FORMAT_3GPP:I = 0x1

.field public static final SMS_FORMAT_3GPP2:I = 0x2

.field public static final SMS_FORMAT_UNKNOWN:I = 0x0

.field public static final SS_USSD_DOMAIN_CS:I = 0x1

.field public static final SS_USSD_DOMAIN_PS:I = 0x0

.field public static final SS_USSD_DOMAIN_PS_REGI:I = 0x3

.field public static final SS_USSD_DOMAIN_UNKNOWN:I = 0xff

.field public static final SS_USSD_DOMAIN_VOLTE_REGI:I = 0x2

.field public static final VOICE_DOMAIN_PREFERENCE_CS_ONLY:I = 0x0

.field public static final VOICE_DOMAIN_PREFERENCE_CS_PREF:I = 0x2

.field public static final VOICE_DOMAIN_PREFERENCE_NONE:I = -0x1

.field public static final VOICE_DOMAIN_PREFERENCE_PS_ONLY:I = 0x1

.field public static final VOICE_DOMAIN_PREFERENCE_PS_PREF:I = 0x3

.field public static final VOICE_DOMAIN_PREFERENCE_UNKNOWN:I = 0xff


# instance fields
.field private mCallwaitingPathPref:I

.field private mEmergencyDomainPref:I

.field private mEnableSms:Z

.field private mEnableSmsWriteUicc:Z

.field private final mImsPrefLog:Landroid/util/LocalLog;

.field private mImsSupportType:I

.field private mSmsFormat:I

.field private mSsCsfb:Z

.field private mSsDomainPref:I

.field private mSupportSrvcc:Z

.field private mSupportVolteRoaming:Z

.field private mUssdDomainPref:I

.field private mVolteEutranPref:I

.field private mVolteUtranPref:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Landroid/util/LocalLog;

    iput v3, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    iput v3, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    iput v3, p0, Lcom/android/internal/telephony/ImsPreference;->mUssdDomainPref:I

    iput v3, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsCsfb:Z

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    iput v3, p0, Lcom/android/internal/telephony/ImsPreference;->mCallwaitingPathPref:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "ImsPreference:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mImsSupportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSupportVolteRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSupportSrvcc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSmsFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mEnableSms="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mEnableSmsWriteUicc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mVolteEutranPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mVolteUtranPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSsDomainPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mUssdDomainPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mUssdDomainPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mEmergencyDomainPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mSsCsfb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsCsfb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mCallwaitingPathPref="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/ImsPreference;->mCallwaitingPathPref:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string/jumbo v1, " ImsPreference change Log:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Landroid/util/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public getCallwaitingPathPref()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ImsPreference;->mCallwaitingPathPref:I

    return v0
.end method

.method public getImsSupportType()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    return v0
.end method

.method public getSsDomainPref()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    return v0
.end method

.method public getUssdDomainPref()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/ImsPreference;->mUssdDomainPref:I

    return v0
.end method

.method public isSupportSrvcc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    return v0
.end method

.method public isSupportVolteRoaming()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    return v0
.end method

.method public setImsPreference(Landroid/os/AsyncResult;)V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    array-length v2, v0

    if-lt v2, v5, :cond_5

    aget v2, v0, v4

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    aget v2, v0, v3

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    const/4 v2, 0x2

    aget v2, v0, v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    const/4 v2, 0x3

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    const/4 v2, 0x4

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    const/4 v2, 0x5

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    const/4 v2, 0x6

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mUssdDomainPref:I

    const/4 v2, 0x7

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    const/16 v2, 0x8

    aget v2, v0, v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSsCsfb:Z

    const/16 v2, 0x9

    aget v2, v0, v2

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    const/16 v2, 0xa

    aget v2, v0, v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    const/16 v2, 0xb

    aget v2, v0, v2

    if-ne v2, v3, :cond_4

    :goto_4
    iput-boolean v3, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    aget v2, v0, v5

    iput v2, p0, Lcom/android/internal/telephony/ImsPreference;->mCallwaitingPathPref:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/ImsPreference;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ImsPreference"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "AsyncResult has wrong ImsPreference value"

    const-string/jumbo v2, "ImsPreference"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/ImsPreference;->mImsPrefLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mImsSupportType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mImsSupportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportVolteRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportVolteRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", supportSrvcc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSupportSrvcc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smsFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSmsFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smsWriteUicc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEnableSmsWriteUicc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volteEutranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteEutranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volteUtranPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mVolteUtranPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ssDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ussdDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mUssdDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", emerDomainPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mEmergencyDomainPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ssCsfb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ImsPreference;->mSsCsfb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callwaitingPathPref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ImsPreference;->mCallwaitingPathPref:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
