.class public final enum Ljava/nio/file/StandardOpenOption;
.super Ljava/lang/Enum;
.source "StandardOpenOption.java"

# interfaces
.implements Ljava/nio/file/OpenOption;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/StandardOpenOption;",
        ">;",
        "Ljava/nio/file/OpenOption;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/StandardOpenOption;

.field public static final enum APPEND:Ljava/nio/file/StandardOpenOption;

.field public static final enum CREATE:Ljava/nio/file/StandardOpenOption;

.field public static final enum CREATE_NEW:Ljava/nio/file/StandardOpenOption;

.field public static final enum DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum DSYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum READ:Ljava/nio/file/StandardOpenOption;

.field public static final enum SPARSE:Ljava/nio/file/StandardOpenOption;

.field public static final enum SYNC:Ljava/nio/file/StandardOpenOption;

.field public static final enum TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

.field public static final enum WRITE:Ljava/nio/file/StandardOpenOption;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "READ"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "WRITE"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "APPEND"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "TRUNCATE_EXISTING"

    invoke-direct {v0, v1, v6}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "CREATE"

    invoke-direct {v0, v1, v7}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "CREATE_NEW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "DELETE_ON_CLOSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "SPARSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "SYNC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    new-instance v0, Ljava/nio/file/StandardOpenOption;

    const-string/jumbo v1, "DSYNC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/nio/file/StandardOpenOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/nio/file/StandardOpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v5

    sget-object v1, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v6

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v1, v0, v7

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->DELETE_ON_CLOSE:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->SPARSE:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/StandardOpenOption;->DSYNC:Ljava/nio/file/StandardOpenOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/StandardOpenOption;
    .locals 1

    const-class v0, Ljava/nio/file/StandardOpenOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/StandardOpenOption;
    .locals 1

    sget-object v0, Ljava/nio/file/StandardOpenOption;->$VALUES:[Ljava/nio/file/StandardOpenOption;

    return-object v0
.end method
