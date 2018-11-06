.class public Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;
.super Ljava/lang/Object;
.source "WifiParsingCustomerFile.java"


# static fields
.field private static final NEED_GID:Z

.field private static final TAG:Ljava/lang/String; = "WifiDefaultApController.Customer"

.field private static instance:Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

.field private static mFilePathDefaultAp:Ljava/io/File;

.field private static mFilePathGeneralNwInfo:Ljava/io/File;


# instance fields
.field private final mLocalLog:Landroid/util/LocalLog;

.field private mParser:Lcom/samsung/android/server/wifi/CscParser;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/generalinfo_nw.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/default_ap.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathDefaultAp:Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_SupportGid"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->NEED_GID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private WifiParsingCustomerFile()V
    .locals 0

    return-void
.end method

.method private createDefaultApFile(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    const-string/jumbo v6, "createDefaultApFile: createDefaultApFile is null"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "createDefaultApFile: delete default_ap.conf file"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_1
    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "createDefaultApFile: delete generalinfo_nw.conf file"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v6, "createDefaultApFile: WifiProfile is empty"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logi(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    :try_start_0
    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathDefaultAp:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathDefaultAp:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_0
    move-object v3, v4

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    const-string/jumbo v6, "WiFi Profile File Create Not Found "

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method private createGeneralNetworkFile(Ljava/lang/String;)V
    .locals 8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "String Matched General Info List \n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "GeneralInfo file delete is called"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v6, "createGeneralNetworkFile: generalInfoNw is null"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v6, "Settings.Secure.WIFI_GENERALINFO_NWINFO is empty"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logi(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mFilePathGeneralNwInfo:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v3, v4

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    const-string/jumbo v6, "GeneralNwInfo File Create Not Found "

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->instance:Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->instance:Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->instance:Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "==== Customer File Dump ===="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCustomerFile()V
    .locals 54

    const/16 v39, 0x0

    const/16 v30, 0x0

    const/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v13, "Settings."

    const-string/jumbo v22, "WifiProfile"

    const-string/jumbo v24, "WifiSSID"

    const-string/jumbo v20, "WifiKeyMgmt"

    const-string/jumbo v23, "WifiPSK"

    const-string/jumbo v19, "WifiHiddenSSID"

    const-string/jumbo v14, "WifiEAPMethod"

    const-string/jumbo v21, "NetworkName"

    const-string/jumbo v12, "GeneralInfo."

    const-string/jumbo v16, "NetworkInfo"

    const-string/jumbo v15, "MCCMNC"

    const-string/jumbo v17, "NetworkName"

    const-string/jumbo v18, "SubsetCode"

    const/16 v51, 0x0

    const/16 v43, 0x0

    const/16 v50, 0x0

    const/16 v42, 0x0

    const/16 v49, 0x0

    const/16 v48, 0x0

    new-instance v52, Lcom/samsung/android/server/wifi/CscParser;

    invoke-static {}, Lcom/samsung/android/server/wifi/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v53

    invoke-direct/range {v52 .. v53}, Lcom/samsung/android/server/wifi/CscParser;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "getCustomerFile: PATH: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-static {}, Lcom/samsung/android/server/wifi/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logi(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v36

    if-nez v36, :cond_0

    const-string/jumbo v52, "getCustomerFile: No WifiProfileNodeList to setup"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v36, :cond_10

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v50

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "getCustomerFile: parsing WifiProfile from customer.xml file, number: "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v45, 0x0

    :goto_0
    move/from16 v0, v45

    move/from16 v1, v50

    if-ge v0, v1, :cond_7

    move-object/from16 v0, v36

    move/from16 v1, v45

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v31

    if-eqz v38, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v39, v45

    :cond_1
    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v30, v45

    :cond_2
    if-eqz v33, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v34, v45

    :cond_3
    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v28, v45

    :cond_4
    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v26, v45

    :cond_5
    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v32, v45

    :cond_6
    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_0
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v52, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v52, "getCustomerFile: get Wifi default ap information"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    const/16 v46, 0x0

    :goto_1
    move/from16 v0, v46

    move/from16 v1, v51

    if-ge v0, v1, :cond_16

    const-string/jumbo v52, "network={\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v39, v46

    if-eqz v52, :cond_8

    const-string/jumbo v52, "    ssid="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v39, v46

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object v52, v28, v46

    if-eqz v52, :cond_9

    const-string/jumbo v52, "    scan_ssid="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v28, v46

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    aget-object v52, v30, v46

    if-eqz v52, :cond_a

    const-string/jumbo v52, "    key_mgmt="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v30, v46

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    aget-object v52, v34, v46

    if-eqz v52, :cond_b

    const-string/jumbo v52, "    psk="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v34, v46

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    aget-object v52, v26, v46

    if-eqz v52, :cond_d

    const-string/jumbo v52, "    eap="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "sim"

    aget-object v53, v26, v46

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_f

    const-string/jumbo v52, "SIM"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    :goto_2
    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    aget-object v52, v32, v46

    if-eqz v52, :cond_e

    const-string/jumbo v52, "    networkname="

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v32, v46

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string/jumbo v52, "}\n"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v52, "aka"

    aget-object v53, v26, v46

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_15

    const-string/jumbo v52, "AKA"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v41

    const-string/jumbo v52, "getCustomerFile: WIFI Profile -NullPointerException"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/server/wifi/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    if-eqz v4, :cond_1d

    if-eqz v36, :cond_1d

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v42

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v53, "getCustomerFile: GeneralInfo, number : "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    mul-int v52, v50, v42

    move/from16 v0, v52

    new-array v6, v0, [Ljava/lang/String;

    mul-int v52, v50, v42

    move/from16 v0, v52

    new-array v9, v0, [Ljava/lang/String;

    mul-int v52, v50, v42

    move/from16 v0, v52

    new-array v10, v0, [Ljava/lang/String;

    const/16 v45, 0x0

    :goto_4
    move/from16 v0, v45

    move/from16 v1, v42

    if-ge v0, v1, :cond_18

    move/from16 v0, v45

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v5, v15}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    const/16 v47, 0x0

    :goto_5
    move/from16 v0, v47

    move/from16 v1, v51

    if-ge v0, v1, :cond_17

    aget-object v52, v32, v47

    if-eqz v52, :cond_14

    aget-object v52, v32, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_14

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v6, v43

    :cond_11
    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v9, v43

    :cond_12
    sget-boolean v52, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->NEED_GID:Z

    if-eqz v52, :cond_13

    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v52

    aput-object v52, v10, v43

    :cond_13
    add-int/lit8 v43, v43, 0x1

    :cond_14
    add-int/lit8 v47, v47, 0x1

    goto :goto_5

    :cond_15
    :try_start_1
    const-string/jumbo v52, "akaprime"

    aget-object v53, v26, v46

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_c

    const-string/jumbo v52, "AKA\'"

    move-object/from16 v0, v40

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_16
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->createDefaultApFile(Ljava/lang/String;)V

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logi(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :cond_17
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_4

    :cond_18
    :try_start_2
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v52, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v52, "getCustomerFile: get GeneralInfo NetworkInfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logd(Ljava/lang/String;)V

    const/16 v46, 0x0

    :goto_6
    move/from16 v0, v46

    move/from16 v1, v43

    if-ge v0, v1, :cond_1e

    const-string/jumbo v52, "network={\n"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v9, v46

    if-eqz v52, :cond_19

    const-string/jumbo v52, "    networkname="

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v9, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    aget-object v52, v6, v46

    if-eqz v52, :cond_1a

    const-string/jumbo v52, "    mccmnc="

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v6, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    sget-boolean v52, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->NEED_GID:Z

    if-eqz v52, :cond_1b

    const-string/jumbo v52, "    SubsetCode="

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v52, v10, v46

    if-eqz v52, :cond_1c

    aget-object v52, v10, v46

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v52, "\""

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v52, "\n"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const-string/jumbo v52, "}\n"

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_6

    :cond_1c
    const-string/jumbo v52, " "

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v41

    const-string/jumbo v52, "getCustomerFile: GeneralInfo -NullPointerException"

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->loge(Ljava/lang/String;)V

    :cond_1d
    :goto_8
    return-void

    :cond_1e
    :try_start_3
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->createGeneralNetworkFile(Ljava/lang/String;)V

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->logi(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiDefaultApController.Customer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiDefaultApController.Customer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WifiDefaultApController.Customer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/WifiParsingCustomerFile;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
