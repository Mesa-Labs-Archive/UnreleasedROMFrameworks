.class Ljava/net/Socket$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/Socket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/Socket;)V
    .locals 0

    iput-object p1, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 6

    iget-object v2, p0, Ljava/net/Socket$1;->this$0:Ljava/net/Socket;

    iget-object v2, v2, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "connect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/net/SocketAddress;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/net/SocketImpl;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v2
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
