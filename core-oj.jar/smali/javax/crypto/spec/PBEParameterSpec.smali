.class public Ljavax/crypto/spec/PBEParameterSpec;
.super Ljava/lang/Object;
.source "PBEParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private iterationCount:I

.field private paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private salt:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return-void
.end method

.method public constructor <init>([BILjava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    iput p2, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    iput-object p3, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->iterationCount:I

    return v0
.end method

.method public getParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->paramSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/PBEParameterSpec;->salt:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
