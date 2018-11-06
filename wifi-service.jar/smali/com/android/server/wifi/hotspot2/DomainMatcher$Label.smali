.class Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
.super Ljava/lang/Object;
.source "DomainMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/DomainMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field private mMatch:I

.field private final mSubDomains:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    return-void
.end method

.method private toString(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    if-eqz v2, :cond_1

    const-string/jumbo v2, ".{"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    invoke-direct {v2, p1}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    return-void

    :cond_1
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public addDomain(Ljava/util/Iterator;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->addDomain(Ljava/util/Iterator;I)V

    :goto_0
    return-void

    :cond_1
    iput p2, v1, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    goto :goto_0
.end method

.method public getMatch()I
    .locals 1

    iget v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mMatch:I

    return v0
.end method

.method public getSubLabel(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->mSubDomains:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/wifi/hotspot2/DomainMatcher$Label;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
