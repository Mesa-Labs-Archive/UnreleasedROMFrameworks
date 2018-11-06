.class public Lcom/android/org/conscrypt/GCMParameters;
.super Ljava/lang/Object;
.source "GCMParameters.java"


# instance fields
.field public final iv:[B

.field public final tLen:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    iput-object p2, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    iget-object v0, p0, Lcom/android/org/conscrypt/GCMParameters;->iv:[B

    return-object v0
.end method

.method public getTLen()I
    .locals 1

    iget v0, p0, Lcom/android/org/conscrypt/GCMParameters;->tLen:I

    return v0
.end method
