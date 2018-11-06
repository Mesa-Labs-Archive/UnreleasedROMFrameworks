.class Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "HWParamSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HWParam/HWParamSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-static {v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->-get2(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput-boolean v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installSubApp:Z

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SUB_APP_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v5, "DEV_TOOL"

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-static {v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Apk Install : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-static {v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->-get1(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sput-boolean v8, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->installRetailModeApp:Z

    const-string/jumbo v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->RETAIL_MODE_APP_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v5, "RETAIL"

    sput-object v5, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->testDivision:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/HWParamSetting$1;->this$0:Lcom/samsung/android/hqm/HWParam/HWParamSetting;

    invoke-static {v5}, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->-get0(Lcom/samsung/android/hqm/HWParam/HWParamSetting;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Apk Install : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
