.class public interface abstract Lcom/sec/ims/ISimMobilityStatusListener;
.super Ljava/lang/Object;
.source "ISimMobilityStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ISimMobilityStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSimMobilityStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
