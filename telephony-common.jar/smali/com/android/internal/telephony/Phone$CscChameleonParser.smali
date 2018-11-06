.class Lcom/android/internal/telephony/Phone$CscChameleonParser;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CscChameleonParser"
.end annotation


# static fields
.field private static final CSC_CHAMELEON_FILE:Ljava/lang/String; = "/carrier/chameleon.xml"

.field private static final PATH_OPERATORS_BRANDALPHA:Ljava/lang/String; = "Operators.BrandAlpha"

.field private static final PATH_OPERATORS_NETWORKCODE:Ljava/lang/String; = "Operators.AndroidOperatorNetworkCode"

.field private static final PATH_OPERATORS_RESELLERID:Ljava/lang/String; = "Operators.SubscriberCarrierId"

.field private static final PATH_OPERATORS_VOICEMAILSPPEDDIAL:Ljava/lang/String; = "Operators.SpeedDial"

.field private static final PATH_ROAMING_REDUCTION_ENABLE:Ljava/lang/String; = "AppSupport.RoamingReductionEnable"


# instance fields
.field private isFileExist:Z

.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/Phone$CscChameleonParser;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExists()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExist:Z

    const-string/jumbo v1, "Phone"

    const-string/jumbo v2, "[CscChameleonParser] init"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "/carrier/chameleon.xml"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isFileExists()Z
    .locals 3

    const-string/jumbo v0, "Phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isFileExists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExist:Z

    return v0
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Phone"

    const-string/jumbo v4, "[CscChameleonParser] Update"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExist:Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "Phone"

    const-string/jumbo v4, "[CscChameleonParser] Update: File not exist"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->isFileExist:Z

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getOperatorBrandAlpha()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Operators.BrandAlpha"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorNetworkCode()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Operators.AndroidOperatorNetworkCode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorResellerID()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Operators.SubscriberCarrierId"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoamingReductionEnabled()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AppSupport.RoamingReductionEnable"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpeedDial()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Operators.SpeedDial"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Phone$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Phone$CscChameleonParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-object v5

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method
