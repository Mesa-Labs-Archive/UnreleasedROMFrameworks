.class Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;
.super Ljava/util/Collections$UnmodifiableNavigableMap;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections$UnmodifiableNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$UnmodifiableNavigableMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f13ab0182e3f294L


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/Collections$UnmodifiableNavigableMap;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections$UnmodifiableNavigableMap;->-get0()Ljava/util/Collections$UnmodifiableNavigableMap$EmptyNavigableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyNavigableSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
