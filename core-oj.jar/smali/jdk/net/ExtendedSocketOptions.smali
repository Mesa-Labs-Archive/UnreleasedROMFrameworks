.class public final Ljdk/net/ExtendedSocketOptions;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/ExtendedSocketOptions$ExtSocketOption;
    }
.end annotation


# static fields
.field public static final SO_FLOW_SLA:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljdk/net/SocketFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;

    const-string/jumbo v1, "SO_FLOW_SLA"

    const-class v2, Ljdk/net/SocketFlow;

    invoke-direct {v0, v1, v2}, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Ljdk/net/ExtendedSocketOptions;->SO_FLOW_SLA:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
