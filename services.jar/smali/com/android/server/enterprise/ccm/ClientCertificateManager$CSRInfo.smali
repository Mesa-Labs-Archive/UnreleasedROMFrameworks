.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSRInfo"
.end annotation


# instance fields
.field private altSubject:Ljava/lang/String;

.field private keyLength:I

.field private subject:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->subject:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->altSubject:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->keyLength:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->altSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->keyLength:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setAltSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->altSubject:Ljava/lang/String;

    return-void
.end method

.method public setKeyLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->keyLength:I

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$CSRInfo;->subject:Ljava/lang/String;

    return-void
.end method
