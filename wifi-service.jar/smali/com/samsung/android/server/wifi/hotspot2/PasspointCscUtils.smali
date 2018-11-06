.class public Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;
.super Ljava/lang/Object;
.source "PasspointCscUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PasspointCscUtils"

.field private static instance:Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

.field private static mPasspointCredentialFile:Ljava/io/File;


# instance fields
.field private mParser:Lcom/samsung/android/server/wifi/CscParser;

.field sb:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/wifi/cred.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mPasspointCredentialFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method private PasspointCscUtils()V
    .locals 0

    return-void
.end method

.method private createPasspointCredendtial(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v6, "createPasspointCredendtial, passpointCredendtialProfile is null."

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    return v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v6, ", createPasspointCredendtial, There is no Profile in customer.xml."

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logi(Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mPasspointCredentialFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mPasspointCredentialFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    :cond_3
    :goto_1
    return v8

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    const-string/jumbo v6, "createPasspointCredendtial, FileNotFoundException"

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v6

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v4, v5

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    goto :goto_2
.end method

.method public static getInstance()Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->instance:Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->instance:Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->instance:Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "==== PasspointCscUtils Customer File Dump ===="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PasspointCscUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PasspointCscUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PasspointCscUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public parsingCsc()Z
    .locals 58

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/4 v12, 0x0

    const/16 v31, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v25, 0x0

    const-string/jumbo v22, "Settings.Wifi"

    const-string/jumbo v42, "Hs20Profile"

    const-string/jumbo v38, "FullyQualifiedDomainName"

    const-string/jumbo v39, "FriendlyName"

    const-string/jumbo v46, "RoamingConsortium"

    const-string/jumbo v45, "Realm"

    const-string/jumbo v37, "Eap"

    const-string/jumbo v47, "UserName"

    const-string/jumbo v43, "Password"

    const-string/jumbo v41, "InnerMethod"

    const-string/jumbo v40, "Imsi"

    const-string/jumbo v33, "CaCert"

    const-string/jumbo v34, "ClientCert"

    const-string/jumbo v35, "ClientKey"

    const-string/jumbo v36, "ClientKeyPassword"

    const-string/jumbo v44, "Priority"

    const/16 v52, 0x0

    const/16 v55, 0x0

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "parsingCsc, getCustomerPath: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-static {}, Lcom/samsung/android/server/wifi/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    new-instance v56, Lcom/samsung/android/server/wifi/CscParser;

    invoke-static {}, Lcom/samsung/android/server/wifi/CscParser;->getCustomerPath()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcom/samsung/android/server/wifi/CscParser;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v32

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v53

    if-nez v53, :cond_0

    const-string/jumbo v56, "parsingCsc, passpointProfileNodeList is null."

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    const/16 v56, 0x0

    return v56

    :cond_0
    if-eqz v53, :cond_22

    const-string/jumbo v56, "parsingCsc, parsing WifiHS20Profile from customer.xml."

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v55

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "parsingCsc, passpointVendorApNumber: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v0, v55

    new-array v15, v0, [Ljava/lang/String;

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    move/from16 v0, v55

    new-array v12, v0, [Ljava/lang/String;

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v55

    new-array v7, v0, [Ljava/lang/String;

    move/from16 v0, v55

    new-array v8, v0, [Ljava/lang/String;

    move/from16 v0, v55

    new-array v10, v0, [Ljava/lang/String;

    move/from16 v0, v55

    new-array v9, v0, [Ljava/lang/String;

    if-nez v55, :cond_1

    const-string/jumbo v56, "parsingCsc, passpointVendorApNumber is 0."

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    const/16 v56, 0x0

    return v56

    :cond_1
    const/16 v50, 0x0

    :goto_0
    move/from16 v0, v50

    move/from16 v1, v55

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v53

    move/from16 v1, v50

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v16, v50

    :cond_2
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v15, v50

    :cond_3
    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v29, v50

    :cond_4
    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v28, v50

    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v12, v50

    :cond_6
    if-eqz v30, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v31, v50

    :cond_7
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v24, v50

    :cond_8
    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v20, v50

    :cond_9
    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v18, v50

    :cond_a
    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v25, v50

    :cond_b
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v7, v50

    :cond_c
    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v8, v50

    :cond_d
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v10, v50

    :cond_e
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->mParser:Lcom/samsung/android/server/wifi/CscParser;

    move-object/from16 v56, v0

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v56

    aput-object v56, v9, v50

    :cond_f
    add-int/lit8 v52, v52, 0x1

    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_0

    :cond_10
    :try_start_0
    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v56, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "parsingCsc, build string of the passpoint credential(count: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, ")"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    if-nez v52, :cond_11

    const/16 v56, 0x0

    return v56

    :cond_11
    const/16 v51, 0x0

    :goto_1
    move/from16 v0, v51

    move/from16 v1, v52

    if-ge v0, v1, :cond_20

    const-string/jumbo v56, "cred={\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v16, v51

    if-eqz v56, :cond_12

    const-string/jumbo v56, "    domain="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v16, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    aget-object v56, v15, v51

    if-eqz v56, :cond_13

    const-string/jumbo v56, "    friendlyname="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v15, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    aget-object v56, v29, v51

    if-eqz v56, :cond_14

    const-string/jumbo v56, "    roaming_consortium="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v29, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    aget-object v56, v28, v51

    if-eqz v56, :cond_15

    const-string/jumbo v56, "    realm="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v28, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    aget-object v56, v7, v51

    if-eqz v56, :cond_16

    const-string/jumbo v56, "    ca_cert="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v7, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    aget-object v56, v8, v51

    if-eqz v56, :cond_17

    const-string/jumbo v56, "    client_cert="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v8, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    aget-object v56, v12, v51

    if-eqz v56, :cond_18

    const-string/jumbo v56, "    eap="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v12, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    aget-object v56, v31, v51

    if-eqz v56, :cond_19

    const-string/jumbo v56, "    username="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v31, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    aget-object v56, v24, v51

    if-eqz v56, :cond_1a

    const-string/jumbo v56, "    password="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v24, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    aget-object v56, v20, v51

    if-eqz v56, :cond_1b

    const-string/jumbo v56, "    phase2="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v20, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    aget-object v56, v18, v51

    if-eqz v56, :cond_1c

    const-string/jumbo v56, "    imsi="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v18, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    aget-object v56, v25, v51

    if-eqz v56, :cond_1d

    const-string/jumbo v56, "    priority="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v25, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    aget-object v56, v10, v51

    if-eqz v56, :cond_1e

    const-string/jumbo v56, "    private_key="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v10, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    aget-object v56, v9, v51

    if-eqz v56, :cond_1f

    const-string/jumbo v56, "    private_key_password="

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v56, v9, v51

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\""

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v56, "\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string/jumbo v56, "}\n"

    move-object/from16 v0, v48

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v51, v51, 0x1

    goto/16 :goto_1

    :cond_20
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "parsingCsc, credsb.toString(): "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->logd(Ljava/lang/String;)V

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->createPasspointCredendtial(Ljava/lang/String;)Z

    move-result v56

    if-nez v56, :cond_21

    const-string/jumbo v56, "parsingCsc, createPasspointCredendtial is false."

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    const/16 v56, 0x0

    return v56

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v56, v0

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_22
    const/16 v56, 0x1

    return v56

    :catch_0
    move-exception v49

    const-string/jumbo v56, "parsingCsc, NullPointerException"

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/hotspot2/PasspointCscUtils;->loge(Ljava/lang/String;)V

    const/16 v56, 0x0

    return v56
.end method
