.class public final enum Ljava/nio/file/attribute/AclEntryFlag;
.super Ljava/lang/Enum;
.source "AclEntryFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/nio/file/attribute/AclEntryFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum DIRECTORY_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum FILE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum INHERIT_ONLY:Ljava/nio/file/attribute/AclEntryFlag;

.field public static final enum NO_PROPAGATE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/nio/file/attribute/AclEntryFlag;

    const-string/jumbo v1, "FILE_INHERIT"

    invoke-direct {v0, v1, v2}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->FILE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    new-instance v0, Ljava/nio/file/attribute/AclEntryFlag;

    const-string/jumbo v1, "DIRECTORY_INHERIT"

    invoke-direct {v0, v1, v3}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->DIRECTORY_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    new-instance v0, Ljava/nio/file/attribute/AclEntryFlag;

    const-string/jumbo v1, "NO_PROPAGATE_INHERIT"

    invoke-direct {v0, v1, v4}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->NO_PROPAGATE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    new-instance v0, Ljava/nio/file/attribute/AclEntryFlag;

    const-string/jumbo v1, "INHERIT_ONLY"

    invoke-direct {v0, v1, v5}, Ljava/nio/file/attribute/AclEntryFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->INHERIT_ONLY:Ljava/nio/file/attribute/AclEntryFlag;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/nio/file/attribute/AclEntryFlag;

    sget-object v1, Ljava/nio/file/attribute/AclEntryFlag;->FILE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    aput-object v1, v0, v2

    sget-object v1, Ljava/nio/file/attribute/AclEntryFlag;->DIRECTORY_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    aput-object v1, v0, v3

    sget-object v1, Ljava/nio/file/attribute/AclEntryFlag;->NO_PROPAGATE_INHERIT:Ljava/nio/file/attribute/AclEntryFlag;

    aput-object v1, v0, v4

    sget-object v1, Ljava/nio/file/attribute/AclEntryFlag;->INHERIT_ONLY:Ljava/nio/file/attribute/AclEntryFlag;

    aput-object v1, v0, v5

    sput-object v0, Ljava/nio/file/attribute/AclEntryFlag;->$VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/nio/file/attribute/AclEntryFlag;
    .locals 1

    const-class v0, Ljava/nio/file/attribute/AclEntryFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method

.method public static values()[Ljava/nio/file/attribute/AclEntryFlag;
    .locals 1

    sget-object v0, Ljava/nio/file/attribute/AclEntryFlag;->$VALUES:[Ljava/nio/file/attribute/AclEntryFlag;

    return-object v0
.end method
