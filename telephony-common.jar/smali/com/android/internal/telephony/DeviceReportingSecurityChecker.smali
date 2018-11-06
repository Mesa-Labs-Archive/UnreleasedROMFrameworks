.class public Lcom/android/internal/telephony/DeviceReportingSecurityChecker;
.super Ljava/lang/Object;
.source "DeviceReportingSecurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DeviceReportingSecurityChecker$1;,
        Lcom/android/internal/telephony/DeviceReportingSecurityChecker$2;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field public static final SIGNATURES:Landroid/content/pm/Signature;

.field private static final SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

.field private static final SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

.field private static SYS_NOK:I = 0x0

.field private static SYS_NOT_SCANNED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceReportingSecurityChecker"

.field public static final TMO_MYACCOUNT:Ljava/lang/String; = "com.tmobile.pr.mytmobile"

.field private static mContext:Landroid/content/Context;

.field private static mIsMyAccountSignature:Z

.field private static mIsSysScopeStatus:Z

.field private static mIsTmoSim:Z

.field private static final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private static final mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sysScopeResult:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOK:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOT_SCANNED:I

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z

    return v0
.end method

.method static synthetic -get4()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I

    return v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I

    return p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isTMOSIM()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

    sput-boolean v2, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z

    sput-boolean v2, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z

    sput-boolean v2, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOK:I

    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOT_SCANNED:I

    sget v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOT_SCANNED:I

    sput v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I

    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v1, "308203623082024aa00302010202044df1bf45300d06092a864886f70d01010505003073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e301e170d3131303631303036353235335a170d3338313032363036353235335a3073310b3009060355040613025553310b30090603550408130257413111300f0603550407130842656c6c657675653111300f060355040a1308542d4d6f62696c6531133011060355040b130a546563686e6f6c6f6779311c301a0603550403131350726f64756374205265616c697a6174696f6e30820122300d06092a864886f70d01010105000382010f003082010a0282010100c1456176d31c8989df7e0b30569da5c9b782380d3ff28fb48b4a17c8a125f40ba14862518397800f7a1030bf7cc188b9296d84af5cc5dc37752a1ca2c33d654258a3fdd29d19f2a0dd4e24b328b03bfef8c17bb8da11a25fdae10c1e1e288e3c1f47ee47617972382b0854474da1d6b526b9787d9a2f8e00600a4e436bfa790d04a0376fd7bd5c6ee78a6e522bbaa969d63667d17ca8fd90087fcc4acf2a2676d341a8e19dc46beb82bb1990710bd4101df8943ef8a3f2d7cb0bac6677ae69f9f3d25c134c08dfeb82000f44dea4164f90a65e352387fdd203c3479cfb380a2f8af5af3219a726ba9d82d72229a8d32979ce84be52006f4b71fe75011e8e2d090203010001300d06092a864886f70d01010505000382010100188d18ea72a49334736e118e766744489c7a5c47543cc35cc62a8cce35e84dfd426af3595fe55192dcb2a54c594a8d0de064dad96d72969fbc873c7a9fe7e14b11aed16c6d4bf90c1911b7d8a054c0c34c7a58c4a434d46e72f6142b654af24d461089c4633aa21cead0b154efac0aec4d68403c51bceab76c33a819857531c6a459a266f495f810417e9583d71f3f53a533f1e7013007253e9ed3466432a21977837669cff2b6b20612c055ff09b44ca15ca6830cdb289398d290852d3b0204deecbb00292194cc7533e5ae593e0d355883ea8022eb6fe5e807d6c059b3f6d6f637cd4014da425742f21b54ec37c6f55d3f0b8b6ced1cbc09376e8ea023396f"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    new-instance v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 2

    const-string/jumbo v0, "DeviceReportingSecurityChecker"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public static enable(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "DeviceReportingSecurityChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DeviceReportingSecurityChecker"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SIM_CHANGED_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYSSCOPE_RESULT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->getMyaccountSignature()Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DeviceReportingSecurityChecker"

    const-string/jumbo v1, "Context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMyaccountSignature()Z
    .locals 9

    const/4 v6, 0x0

    const-string/jumbo v5, "DeviceReportingSecurityChecker"

    const-string/jumbo v7, "getMyaccountSignature"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string/jumbo v5, "com.tmobile.pr.mytmobile"

    const/16 v7, 0x40

    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_2

    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v4, v5

    const/4 v1, 0x0

    :goto_1
    array-length v8, v4

    if-ge v1, v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SIGNATURES:Landroid/content/pm/Signature;

    invoke-virtual {v3, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "DeviceReportingSecurityChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "signed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "DeviceReportingSecurityChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mIsMyAccountSignature : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v5, "DeviceReportingSecurityChecker"

    const-string/jumbo v7, "Package is not installed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public static getStatus()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMyAccountSigPresent()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsMyAccountSignature:Z

    return v0
.end method

.method public static isSysScopeOk()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z

    return v0
.end method

.method private static isTMOSIM()Z
    .locals 4

    const-string/jumbo v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DeviceReportingSecurityChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "gsm.sim.operator.numeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "310160"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310210"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310220"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310230"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310240"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310250"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310260"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310270"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310310"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310490"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310660"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "310800"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method
