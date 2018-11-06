.class public Lcom/samsung/android/hqm/setting/ModelHWParamReader;
.super Ljava/lang/Object;
.source "ModelHWParamReader.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static isSuccessInfo:Z

.field private static isSuccessSetting:Z

.field private static sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    sput-boolean v1, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseParamInfo(Lcom/samsung/android/hqm/HWParam/HWParamModule;Ljava/io/InputStream;)Z
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    sput-boolean v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    if-nez p1, :cond_0

    sget-boolean v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    return v10

    :cond_0
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "parseParamInfo() - start"

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v23

    if-nez v23, :cond_1

    sget-boolean v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    return v10

    :cond_1
    const-string/jumbo v10, "hwparam_document"

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "Node name of the root element is wrong."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v47

    const/16 v45, 0x0

    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v46

    :goto_0
    move/from16 v0, v45

    move/from16 v1, v46

    if-ge v0, v1, :cond_15

    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v45, v45, 0x1

    goto :goto_0

    :cond_4
    sget v25, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_SM:I

    const-string/jumbo v37, ""

    move-object/from16 v0, v47

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v26

    check-cast v26, Lorg/w3c/dom/Element;

    const-string/jumbo v10, "hwparam_info"

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "compID"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "compVer"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "compManufacture"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "hitType"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "feature"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ph"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "uevent_path"

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    sget v25, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_PH:I

    if-eqz v37, :cond_7

    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v37

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " |"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " |"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v44

    const/16 v27, 0x0

    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    :goto_3
    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_8

    :cond_6
    :goto_4
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    :cond_7
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | ??? |"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/Element;

    const-string/jumbo v10, "sysfs_node"

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_sysfs_info(Lorg/w3c/dom/Element;)Lcom/samsung/android/hqm/SysfsNodeInfo;

    move-result-object v32

    if-eqz v32, :cond_6

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_key_info(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v10, "enc_sysfs_node"

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v11, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-eq v10, v11, :cond_6

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v11, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-eq v10, v11, :cond_6

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_sysfs_info(Lorg/w3c/dom/Element;)Lcom/samsung/android/hqm/SysfsNodeInfo;

    move-result-object v32

    if-eqz v32, :cond_6

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v10, "dev_sysfs_node"

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v11, Lcom/samsung/android/hqm/HWParam/HWParamConst;->CF_SERVER:I

    if-eq v10, v11, :cond_6

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v11, Lcom/samsung/android/hqm/HWParam/HWParamConst;->DQ_SERVER:I

    if-eq v10, v11, :cond_6

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_sysfs_info(Lorg/w3c/dom/Element;)Lcom/samsung/android/hqm/SysfsNodeInfo;

    move-result-object v32

    if-eqz v32, :cond_6

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v10, "condition_info"

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/16 v18, 0x0

    const-string/jumbo v10, "path"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v10, "value"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v36 .. v36}, Lcom/samsung/android/hqm/Util;->checkFileExist(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string/jumbo v10, ""

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v18, 0x1

    :cond_c
    :goto_5
    if-eqz v18, :cond_6

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    const/16 v29, 0x0

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    :goto_6
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_11

    :cond_d
    :goto_7
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    :cond_e
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-static {v10, v0}, Lcom/samsung/android/hqm/Util;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_c

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v18, 0x1

    goto :goto_5

    :cond_f
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "condition value is diff : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " / "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "condition node is not exist "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/Element;

    const-string/jumbo v10, "sysfs_node"

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_sysfs_info(Lorg/w3c/dom/Element;)Lcom/samsung/android/hqm/SysfsNodeInfo;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_12
    const-string/jumbo v10, "data_info"

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->TargetServer:I

    sget v11, Lcom/samsung/android/hqm/HWParam/HWParamConst;->FACTORY_SERVER:I

    if-eq v10, v11, :cond_6

    const-string/jumbo v10, "interface"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v10, "type1"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    const-string/jumbo v10, "type2"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string/jumbo v10, "type3"

    move-object/from16 v0, v22

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    if-eqz v40, :cond_6

    if-eqz v41, :cond_6

    if-eqz v42, :cond_6

    if-eqz v43, :cond_6

    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " (d) | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v42

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " |"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->read_key_info(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_13
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int v34, v10, v11

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    if-lez v34, :cond_3

    sget-object v10, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->FeatureList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_SM:I

    move/from16 v0, v25

    if-ne v0, v10, :cond_14

    new-instance v3, Lcom/samsung/android/hqm/HWParam/HWParamInfo;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v3, v0, v1, v2}, Lcom/samsung/android/hqm/HWParam/HWParamInfo;->prepare(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    move/from16 v0, v25

    invoke-virtual {v10, v0, v3}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addHWParamInfo(ILcom/samsung/android/hqm/HWParam/AbsHWParamInfo;)V

    goto/16 :goto_1

    :cond_14
    sget v10, Lcom/samsung/android/hqm/HWParam/HWParamConst;->HWPARAM_HITTYPE_PH:I

    move/from16 v0, v25

    if-ne v0, v10, :cond_3

    new-instance v9, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v9, v0, v1, v2}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->prepare(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v37

    invoke-virtual {v9, v0}, Lcom/samsung/android/hqm/HWParam/HWParamInfoPh;->setUEventPath(Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    move/from16 v0, v25

    invoke-virtual {v10, v0, v9}, Lcom/samsung/android/hqm/HWParam/HWParamModule;->addHWParamInfo(ILcom/samsung/android/hqm/HWParam/AbsHWParamInfo;)V

    goto/16 :goto_1

    :cond_15
    const/4 v10, 0x1

    sput-boolean v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    sget-boolean v10, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    return v10
.end method

.method public static parseSettingInfo(Lcom/samsung/android/hqm/HWParam/HWParamModule;Ljava/io/InputStream;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    if-nez p1, :cond_0

    sget-boolean v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    return v17

    :cond_0
    sget-object v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    const-string/jumbo v18, "parseSettingInfo() - start"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->sHWParamModule:Lcom/samsung/android/hqm/HWParam/HWParamModule;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v6

    if-nez v6, :cond_1

    sget-boolean v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    return v17

    :cond_1
    const-string/jumbo v17, "hwparam_document"

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "Node name of the root element is wrong."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_2
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v11, 0x0

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    :goto_0
    if-ge v11, v12, :cond_6

    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v13, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    const-string/jumbo v17, "hwparam_setting"

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    const-string/jumbo v17, "enable"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v17, "DVServer"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "DQServer"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "CFServer"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v17, "condition"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "LogBackup"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v17, "analyzer"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string/jumbo v4, "none"

    :cond_5
    sget-object v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "hwparam_setting : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    :goto_1
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    :goto_2
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    :goto_3
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    :goto_4
    const-string/jumbo v17, "frst"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->conditionFacRst:Z

    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    :goto_5
    const-string/jumbo v17, "true"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->logBackup:Z

    :goto_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    sput-object v2, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->analyzer:Ljava/lang/String;

    :cond_6
    const/16 v17, 0x1

    sput-boolean v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    sget-boolean v17, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    return v17

    :cond_7
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->enable:Z

    goto :goto_1

    :cond_8
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDVServer:Z

    goto :goto_2

    :cond_9
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingDQServer:Z

    goto :goto_3

    :cond_a
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->usingCFServer:Z

    goto :goto_4

    :cond_b
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->conditionFacRst:Z

    goto :goto_5

    :cond_c
    const/16 v17, 0x0

    sput-boolean v17, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->logBackup:Z

    goto :goto_6
.end method

.method public static parsingSuccess()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessSetting:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->isSuccessInfo:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static read_key_info(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 30

    const-string/jumbo v28, "compID"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v28, "feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v28, "order_compID"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v28, "order_feature"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v20, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v21, v28, 0x64

    add-int v23, v20, v21

    const/16 v22, 0x1

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    if-eqz v16, :cond_2

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Element;

    const-string/jumbo v28, "key_info"

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    const-string/jumbo v28, "keyname"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v28, "min"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v28, "max"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v28, "desc1"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v28, "desc2"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v28, "desc3"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v28, "desc4"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v28, "type1"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v28, "type2"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v2, Lcom/samsung/android/hqm/KeyInfo;

    invoke-direct {v2}, Lcom/samsung/android/hqm/KeyInfo;-><init>()V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int v14, v23, v22

    invoke-virtual/range {v2 .. v14}, Lcom/samsung/android/hqm/KeyInfo;->setData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v28, Lcom/samsung/android/hqm/HWParam/HWParamSetting;->keyHashMap1:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    :cond_2
    return-void
.end method

.method private static read_sysfs_info(Lorg/w3c/dom/Element;)Lcom/samsung/android/hqm/SysfsNodeInfo;
    .locals 8

    const/4 v6, 0x0

    const-string/jumbo v5, "type"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "key"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "value"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "clear"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v5, Lcom/samsung/android/hqm/setting/ModelHWParamReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " (B) | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/hqm/Util;->logdbg(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/hqm/SysfsNodeInfo;

    invoke-direct {v5, v4, v3, v2, v0}, Lcom/samsung/android/hqm/SysfsNodeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v5

    :cond_0
    return-object v6
.end method
