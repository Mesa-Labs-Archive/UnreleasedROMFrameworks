.class public Lsun/nio/ch/PollSelectorProvider;
.super Lsun/nio/ch/SelectorProviderImpl;
.source "PollSelectorProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/nio/ch/SelectorProviderImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public openSelector()Ljava/nio/channels/spi/AbstractSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/nio/ch/PollSelectorImpl;

    invoke-direct {v0, p0}, Lsun/nio/ch/PollSelectorImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v0
.end method
