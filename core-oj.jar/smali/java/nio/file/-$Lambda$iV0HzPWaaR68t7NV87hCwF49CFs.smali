.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    invoke-static {p1}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_166757(Ljava/nio/file/FileTreeWalker$Event;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
