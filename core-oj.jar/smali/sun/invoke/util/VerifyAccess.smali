.class public Lsun/invoke/util/VerifyAccess;
.super Ljava/lang/Object;
.source "VerifyAccess.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ALLOW_NESTMATE_ACCESS:Z = false

.field private static final ALL_ACCESS_MODES:I = 0x7

.field private static final PACKAGE_ALLOWED:I = 0x8

.field private static final PACKAGE_ONLY:I = 0x0

.field private static final PROTECTED_OR_PACKAGE_ALLOWED:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/invoke/util/VerifyAccess;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/invoke/util/VerifyAccess;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classLoaderIsAncestor(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lsun/invoke/util/VerifyAccess;->loadersAreRelated(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)Z

    move-result v0

    return v0
.end method

.method private static getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v2, Lsun/invoke/util/VerifyAccess;->-assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const-string/jumbo v2, ""

    return-object v2

    :cond_1
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static isMemberAccessible(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Class;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<*>;I)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lsun/invoke/util/VerifyAccess;->-assertionsDisabled:Z

    if-nez v1, :cond_2

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 v1, p4, -0x10

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-static {p0, p3, p4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    if-ne p1, p3, :cond_4

    and-int/lit8 v1, p4, 0x2

    if-eqz v1, :cond_4

    return v2

    :cond_4
    and-int/lit8 v1, p2, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad modifiers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    return v2

    :pswitch_2
    sget-boolean v1, Lsun/invoke/util/VerifyAccess;->-assertionsDisabled:Z

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    and-int/lit8 v1, p4, 0xc

    if-eqz v1, :cond_6

    invoke-static {p1, p3}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    and-int/lit8 v1, p4, 0x4

    if-nez v1, :cond_7

    return v0

    :cond_7
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_8

    invoke-static {p0, p3}, Lsun/invoke/util/VerifyAccess;->isRelatedClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_9

    invoke-static {p3, p1}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    return v0

    :pswitch_3
    sget-boolean v1, Lsun/invoke/util/VerifyAccess;->-assertionsDisabled:Z

    if-nez v1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_b

    invoke-static {p1, p3}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    :cond_b
    return v0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static isRelatedClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-eq p0, p1, :cond_0

    invoke-static {p0, p1}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lsun/invoke/util/VerifyAccess;->isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/16 v8, 0x2e

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_1
    if-ne p0, p1, :cond_2

    return v7

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v0, v4, :cond_4

    return v6

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_5

    return v6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v7
.end method

.method public static isSamePackageMember(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v3

    :cond_0
    invoke-static {p0, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lsun/invoke/util/VerifyAccess;->getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1}, Lsun/invoke/util/VerifyAccess;->getOutermostEnclosingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method static isSubClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTypeVisible(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_2

    const-class v6, Ljava/lang/Object;

    if-ne p0, v6, :cond_3

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_4

    return v4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_5

    return v5

    :cond_5
    if-eq v2, v0, :cond_6

    invoke-static {v2, v0, v4}, Lsun/invoke/util/VerifyAccess;->loadersAreRelated(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    return v4

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-ne p0, v3, :cond_8

    :goto_1
    return v4

    :cond_8
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v1

    return v5
.end method

.method public static isTypeVisible(Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    if-gez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->returnType()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-static {v2, p1}, Lsun/invoke/util/VerifyAccess;->isTypeVisible(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private static loadersAreRelated(Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;Z)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eq p0, p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    return v3

    :cond_1
    if-nez p1, :cond_2

    xor-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_0

    :cond_2
    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_4

    if-ne v1, p0, :cond_3

    return v3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    return v4

    :cond_5
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_7

    if-ne v0, p1, :cond_6

    return v3

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_7
    return v4
.end method
