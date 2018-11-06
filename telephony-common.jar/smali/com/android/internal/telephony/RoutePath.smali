.class public Lcom/android/internal/telephony/RoutePath;
.super Ljava/lang/Object;
.source "RoutePath.java"


# static fields
.field public static final SS_POLICY_CS:I = 0x1

.field public static final SS_POLICY_PS:I = 0x0

.field public static final SS_POLICY_PS_REGIED:I = 0x3

.field public static final SS_POLICY_VOLTE_REGIED:I = 0x2

.field public static final SS_ROUTE_PATH_CS:I = 0x0

.field public static final SS_ROUTE_PATH_IMS:I = 0x1

.field public static final SS_ROUTE_PATH_UNKNOWN:I = -0x1

.field private static sInstance:Lcom/android/internal/telephony/RoutePath;


# instance fields
.field private mForceUsingLegacyFor403Error:Z

.field private mForceUsingLegacyFor403UssdError:Z

.field private mNeedCsfb:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/RoutePath;->mForceUsingLegacyFor403Error:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/RoutePath;->mForceUsingLegacyFor403UssdError:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/RoutePath;->mNeedCsfb:Z

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/RoutePath;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/RoutePath;->sInstance:Lcom/android/internal/telephony/RoutePath;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/RoutePath;

    invoke-direct {v0}, Lcom/android/internal/telephony/RoutePath;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RoutePath;->sInstance:Lcom/android/internal/telephony/RoutePath;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/RoutePath;->sInstance:Lcom/android/internal/telephony/RoutePath;

    return-object v0
.end method


# virtual methods
.method public getNeedCsfb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/RoutePath;->mNeedCsfb:Z

    return v0
.end method

.method public setForceUsingLegacy404Error(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/RoutePath;->mForceUsingLegacyFor403Error:Z

    return-void
.end method

.method public setForceUsingLegacy404UssdError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/RoutePath;->mForceUsingLegacyFor403UssdError:Z

    return-void
.end method

.method public setNeedCsfb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/RoutePath;->mNeedCsfb:Z

    return-void
.end method
