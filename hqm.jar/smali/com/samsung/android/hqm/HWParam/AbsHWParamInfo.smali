.class public abstract Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;
.super Ljava/lang/Object;
.source "AbsHWParamInfo.java"


# instance fields
.field protected Feature:Ljava/lang/String;

.field protected HitType:Ljava/lang/String;

.field protected Id:Ljava/lang/String;

.field protected Manufacture:Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected Ver:Ljava/lang/String;

.field protected correctData:Z

.field protected custom_sysfsNodelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected customlogMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected develop_sysfsNodelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected developlogMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected enable:Z

.field protected mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

.field protected private_sysfsNodelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected privatelogMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    iput-boolean v1, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    const-string/jumbo v0, "sample"

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Id:Ljava/lang/String;

    const-string/jumbo v0, "sm"

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->HitType:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    return-void
.end method

.method private updateKernelBigData(I)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v10, p1

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DV_SERVER:I

    if-eq v0, v2, :cond_1

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    if-ne v0, v2, :cond_5

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->readDVType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->creatJSONFormatFromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->creatJSONFormatFromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->creatJSONFormatFromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/hqm/BigDataModule;->getInstance()Lcom/samsung/android/hqm/BigDataModule;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    :cond_3
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_TRIGGER_TYPE_NORMAL:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Id:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Ver:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Manufacture:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->HitType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Feature:Ljava/lang/String;

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamFromKernel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    return v11

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendK(DV) - failed to read...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-eq v0, v2, :cond_6

    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v2, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-ne v0, v2, :cond_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->readCFType(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->creatJSONFormatFromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendK(DQ) - failed to read...."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Feature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/hqm/Util;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_8
    return v1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->mBigDataModule:Lcom/samsung/android/hqm/BigDataModule;

    iget-object v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Id:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Ver:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Manufacture:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->HitType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Feature:Ljava/lang/String;

    move v1, v11

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/hqm/BigDataModule;->sendHWParamFromKernel(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_a
    return v1
.end method


# virtual methods
.method addSysfsDataToMap(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v10, 0x0

    const-string/jumbo v5, "\\{"

    const-string/jumbo v6, "\\}"

    sget v18, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_TRIGGER_TYPE_NORMAL:I

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v17, 0x1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getNode()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/hqm/SysfsNodeInfo;->isClear()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/samsung/android/hqm/Util;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    const-string/jumbo v18, "S"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v17, :cond_1

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "c"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v13, v1}, Lcom/samsung/android/hqm/Util;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v18, "M"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "\",\""

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v18, "\":\""

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v18, "\""

    const-string/jumbo v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v10, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v10, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x0

    aget-object v18, v11, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    const/16 v18, 0x0

    aget-object v18, v11, v18

    const/16 v19, 0x1

    aget-object v19, v11, v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "error node : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v11

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v11, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v18, "S"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string/jumbo v18, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public creatJSONFormatFromHashMap(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    if-lez v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "####"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "####"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3
    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7

    const-string/jumbo v4, "    "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sysfsNode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/hqm/BigDataSetting;->isEng:Z

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "     D "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "     C "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-virtual {v4}, Lcom/samsung/android/hqm/SysfsNodeInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "     P "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Feature:Ljava/lang/String;

    return-object v0
.end method

.method public getFullHitType()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "None"

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->HitType:Ljava/lang/String;

    const-string/jumbo v2, "ph"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Performance"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "th"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "Threshold"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "sm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "Alarm 24H"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "None"

    goto :goto_0
.end method

.method public getHitTyp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->HitType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Manufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->Ver:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/hqm/SysfsNodeInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parameter setting - OK"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method readCFType(I)Z
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    if-nez v3, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->addSysfsDataToMap(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CF totalValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method readDVType(I)Z
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    if-nez v3, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->addSysfsDataToMap(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->addSysfsDataToMap(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3, v4, p1}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->addSysfsDataToMap(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;I)V

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    add-int v1, v3, v4

    iget-object v3, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DV totalValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->correctData:Z

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendBigData()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v1, Lcom/samsung/android/hqm/HWParam/HWParamConst;->NONE_SERVER:I

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_TRIGGER_TYPE_NORMAL:I

    invoke-direct {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->updateKernelBigData(I)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "send() - OK!"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method terminate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->developlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->customlogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->privatelogMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->develop_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->custom_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->private_sysfsNodelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method public updateHWParam()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->enable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_TRIGGER_TYPE_APP:I

    invoke-direct {p0, v0}, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->updateKernelBigData(I)Z

    iget-object v0, p0, Lcom/samsung/android/hqm/HWParam/AbsHWParamInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateHWParam() - OK!"

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
