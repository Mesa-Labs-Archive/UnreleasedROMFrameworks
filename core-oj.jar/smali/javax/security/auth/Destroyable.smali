.class public interface abstract Ljavax/security/auth/Destroyable;
.super Ljava/lang/Object;
.source "Destroyable.java"


# virtual methods
.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/DestroyFailedException;
        }
    .end annotation

    new-instance v0, Ljavax/security/auth/DestroyFailedException;

    invoke-direct {v0}, Ljavax/security/auth/DestroyFailedException;-><init>()V

    throw v0
.end method

.method public isDestroyed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
