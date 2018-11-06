.class Lcom/android/internal/telephony/ServiceStateTracker$4;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap5(Lcom/android/internal/telephony/ServiceStateTracker;)V

    return-void

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.ACTION_MOCK_CELL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "mode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MockCell - mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "data"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v2, "CELL_INFO_LIST"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MockCell() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/ServiceStateTracker;->ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "simslot"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "feature"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set6(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "bigdata_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set20(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BIG_DATA insertLog slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get2(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set18(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get2(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get18(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "BIG_DATA Feature is undefined. Don\'t send Big Data !!"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "plugged"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set3(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "voltage"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set5(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get1(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const-string/jumbo v2, "hv_charger"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set3(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set4(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACTION_REQUEST_FORCE_SPN_UPDATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay(Z)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v2, "phone"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v2, "LOCKED"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "EUR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setEmergencyNumbers()V

    :cond_9
    :goto_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set14(Z)Z

    :cond_a
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "REASON"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string/jumbo v2, "SIMSLOT"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v23

    if-ne v2, v0, :cond_c

    const-string/jumbo v2, "VZW"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "USC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "ACG"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM removed, reset MDN MIN OTASP, slot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set11(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set12(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set10(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    const-string/jumbo v2, "ril.otasp_state"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set8(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get10(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyOtaspChanged(I)V

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.tplmn_barring"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "timer"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timer is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-lez v26, :cond_e

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v18, 0x8

    const/16 v2, 0x11

    :try_start_0
    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v2, 0x84

    invoke-virtual {v12, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_d

    :try_start_1
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "USC"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "ACG"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.MIN_VALUE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "mMinValue"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set12(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get5(Lcom/android/internal/telephony/ServiceStateTracker;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received ACTION_AIRPLANE_MODE_CHANGED = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v8, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOtaspState()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    :cond_11
    :goto_8
    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "MockCell() - mMockCellInfoList is null!"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mMockCellInfoList:Ljava/util/List;

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "CEND"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get19(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->preLogCEND(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set20(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "DROP"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get19(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->preLogDROP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set20(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "CRSH"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "SMSS"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "SMSF"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "SMSI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "PDPS"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "PDPF"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "PDPI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "ATTS"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "ATTF"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "ATTI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "SIMD"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set18(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "RLFC"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "MIPI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "RFDV"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "RLFI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "NSVC"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "MMRJ"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "RFPD"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "MUTE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "PMLI"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "INTG"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set19(Lcom/android/internal/telephony/ServiceStateTracker;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set7(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "com.android.internal.telephony"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get18(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->-get19(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/ServiceStateTracker;->-get17(Lcom/android/internal/telephony/ServiceStateTracker;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->-get3(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/ServiceStateTracker;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get1(Lcom/android/internal/telephony/ServiceStateTracker;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "online"

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set3(Lcom/android/internal/telephony/ServiceStateTracker;I)I

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v2, "LOADED"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string/jumbo v2, "AddDataLock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    const-string/jumbo v5, "CscFeature_RIL_ConfigSimLock"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimSlotCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "[DataLockFeature] INTENT_VALUE_ICC_LOADED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "gsm.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    const/4 v2, 0x0

    aget-object v19, v21, v2

    const/4 v2, 0x1

    aget-object v20, v21, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[DataLockFeature] sim1Numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sim2Numeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->setPrefNetTypeForDataLockSim(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v2, "ABSENT"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_8

    const/4 v15, 0x1

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimSlotCount:I

    if-ge v14, v2, :cond_18

    const-string/jumbo v2, "ABSENT"

    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v14, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const/4 v15, 0x0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get0(Lcom/android/internal/telephony/ServiceStateTracker;)Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "Unblock IPC to send here in Absent. Other cases in other area"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set0(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyRilConnected()V

    goto/16 :goto_4

    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimSlotCount:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "CHN"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "HKG"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "TPE"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "ABSENT"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->setEmergencyNumbers()V

    goto/16 :goto_5

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set14(Z)Z

    goto/16 :goto_6

    :catch_0
    move-exception v13

    const-string/jumbo v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on stream io"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catch_1
    move-exception v13

    :try_start_2
    const-string/jumbo v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error while updating tplmn_barring :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_1c

    :try_start_3
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    :cond_1c
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :catch_2
    move-exception v13

    const-string/jumbo v2, "SST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error on stream io"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_1d

    :try_start_4
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    :cond_1d
    if-eqz v9, :cond_1e

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1e
    :goto_a
    throw v2

    :catch_3
    move-exception v13

    const-string/jumbo v3, "SST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error on stream io"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set17(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_8

    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string/jumbo v3, "DDS changed. pollState()"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->pollState()V

    goto/16 :goto_8

    :cond_21
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/ServiceStateTracker;->-get13()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set15(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->showMCCSettingAlertDialog()V

    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-set2(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    iget-object v11, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string/jumbo v2, "REASON"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    const-string/jumbo v2, "SIMSLOT"

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    if-nez v22, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    move/from16 v0, v23

    if-ne v2, v0, :cond_24

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "CscFeature_RIL_DisplayPlmnnameSimload"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSimLoadedDone:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnReadDone:Z

    :cond_24
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set13(I)I

    :cond_25
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "CscFeature_RIL_EnableVoicePriority"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-class v2, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string/jumbo v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v24

    check-cast v24, Lcom/android/internal/telephony/PhoneConstants$DataState;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object/from16 v0, v24

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set9(Z)Z

    :cond_26
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/ServiceStateTracker;->-get11(Lcom/android/internal/telephony/ServiceStateTracker;)Lcom/android/internal/telephony/GsmCdmaPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mTmoWfcRegistered:Z

    if-eqz v2, :cond_27

    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setState(I)V

    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->updateSpnDisplay()V

    :cond_28
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-wrap1(Lcom/android/internal/telephony/ServiceStateTracker;)V

    :cond_2a
    return-void

    :cond_2b
    const/4 v2, 0x1

    goto :goto_b

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "oem_request"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set1(Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x4

    aget-byte v3, v10, v3

    iput-byte v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcPrefMode:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/4 v3, 0x5

    aget-byte v3, v10, v3

    iput-byte v3, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcStatus:B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status has: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-byte v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcStatus:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prefMode has: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-byte v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcPrefMode:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-byte v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcStatus:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/ServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-byte v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mWfcPrefMode:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_28

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->-set1(Z)Z

    goto/16 :goto_c

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
