.class public Lcom/samsung/android/hqm/setting/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field public static HQM_BIGDATA_ENABLE:Z

.field private static final TAG:Ljava/lang/String;

.field private static sFeature:Lcom/samsung/android/hqm/setting/Feature;


# instance fields
.field private configFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/hqm/setting/Feature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/setting/Feature;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hqm/setting/Feature;->sFeature:Lcom/samsung/android/hqm/setting/Feature;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "hqm_a7y18lte"

    iput-object v0, p0, Lcom/samsung/android/hqm/setting/Feature;->configFile:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/hqm/setting/Feature;
    .locals 1

    sget-object v0, Lcom/samsung/android/hqm/setting/Feature;->sFeature:Lcom/samsung/android/hqm/setting/Feature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/hqm/setting/Feature;

    invoke-direct {v0}, Lcom/samsung/android/hqm/setting/Feature;-><init>()V

    sput-object v0, Lcom/samsung/android/hqm/setting/Feature;->sFeature:Lcom/samsung/android/hqm/setting/Feature;

    :cond_0
    sget-object v0, Lcom/samsung/android/hqm/setting/Feature;->sFeature:Lcom/samsung/android/hqm/setting/Feature;

    return-object v0
.end method


# virtual methods
.method public setting()V
    .locals 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    sget-boolean v0, Lcom/samsung/android/hqm/setting/Feature;->HQM_BIGDATA_ENABLE:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/hqm/setting/Feature;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "feature is not set "

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/setting/Feature;->configFile:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/hqm/setting/Feature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xml file name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->HWPARAM_XML_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
