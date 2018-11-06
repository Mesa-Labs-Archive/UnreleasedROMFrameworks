.class public abstract Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;
.super Ljava/lang/Object;
.source "ANQPElement.java"


# instance fields
.field private final mID:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;


# direct methods
.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;->mID:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-void
.end method


# virtual methods
.method public getID()Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/anqp/ANQPElement;->mID:Lcom/android/server/wifi/hotspot2/anqp/Constants$ANQPElementType;

    return-object v0
.end method
