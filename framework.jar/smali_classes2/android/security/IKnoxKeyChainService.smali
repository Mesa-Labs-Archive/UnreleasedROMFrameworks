.class public interface abstract Landroid/security/IKnoxKeyChainService;
.super Ljava/lang/Object;
.source "IKnoxKeyChainService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKnoxKeyChainService$Stub;
    }
.end annotation


# virtual methods
.method public abstract UKSgenerateCSR(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UKSinstallObject(ILcom/samsung/android/knox/keystore/CertificateProfile;I[BLjava/lang/String;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
