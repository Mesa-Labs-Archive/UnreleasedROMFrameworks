.class Lcom/samsung/android/hqm/BigDataModule$1;
.super Landroid/content/BroadcastReceiver;
.source "BigDataModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/BigDataModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hqm/BigDataModule;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/BigDataModule;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hqm/BigDataModule$1;->this$0:Lcom/samsung/android/hqm/BigDataModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v1, "com.samsung.context.hqmbigdata.intent"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "hwparam"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/os/HWParamParcel;

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getType()I

    move-result v3

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getCompID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getCompVer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getCompManufacture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getHitType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getFeature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getDevelopMap()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getCustomMap()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getPrivateMap()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Landroid/os/HWParamParcel;->getAppId()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v12, "com.samsung.android.hqm"

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hqm/BigDataModule$1;->this$0:Lcom/samsung/android/hqm/BigDataModule;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->-wrap0(Lcom/samsung/android/hqm/BigDataModule;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "Type"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v1, "Id"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "Ver"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "MFG"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "HitType"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "Feature"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "DDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "BDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "PDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "appID"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v12, "com.samsung.android.hqm"

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hqm/BigDataModule$1;->this$0:Lcom/samsung/android/hqm/BigDataModule;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->-wrap0(Lcom/samsung/android/hqm/BigDataModule;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "com.sec.android.intent.action.APP_HQM_SEND_REQ"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "Type"

    const/4 v2, 0x0

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v1, "Id"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "Ver"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "MFG"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "HitType"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "Feature"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "DDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v1, "BDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v1, "PDataSet"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v1, "appID"

    const-string/jumbo v2, ""

    invoke-virtual {v14, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, -0x1

    const-string/jumbo v1, "android.intent.extra.UID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "android.intent.extra.UID"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    :cond_5
    const-string/jumbo v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v12, "com.samsung.android.hqm"

    :cond_6
    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "log is from non-system app : "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, " / "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v18, " / "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/hqm/BigDataModule$1;->this$0:Lcom/samsung/android/hqm/BigDataModule;

    const/4 v2, 0x2

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/hqm/BigDataModule;->-wrap0(Lcom/samsung/android/hqm/BigDataModule;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "USER_ID"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->-get1()Lcom/samsung/android/hqm/HqmDBHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->-get1()Lcom/samsung/android/hqm/HqmDBHelper;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/samsung/android/hqm/HqmDBHelper;->saveUserID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-object v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->SingleID:Ljava/lang/String;

    goto/16 :goto_0
.end method
