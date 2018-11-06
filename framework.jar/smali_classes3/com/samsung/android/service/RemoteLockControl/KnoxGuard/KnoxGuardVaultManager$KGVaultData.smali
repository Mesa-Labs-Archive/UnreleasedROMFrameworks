.class Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;
.super Ljava/lang/Object;
.source "KnoxGuardVaultManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KGVaultData"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x1b8ffafbd1fffc41L


# instance fields
.field private mClientData:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFailureCount:I

.field private mNoticeMessage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRequesterName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    iput-object p2, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    return v0
.end method

.method public getNoticeMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRequesterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mClientData:Ljava/lang/String;

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mEmailAddress:Ljava/lang/String;

    return-void
.end method

.method public setFailureCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mFailureCount:I

    return-void
.end method

.method public setNoticeMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mNoticeMessage:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setRequesterName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/KnoxGuard/KnoxGuardVaultManager$KGVaultData;->mRequesterName:Ljava/lang/String;

    return-void
.end method
