<#include "security.ftl">
<<<<<<< HEAD
<#import "login.ftl" as l>
=======
>>>>>>> origin/master

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">Sweater</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/main">Messages</a>

                <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/user">User list</a>
                </li>
                </#if>
            </ul>
<<<<<<< HEAD
            <div class="navbar-text px-3">${name}</div>

            <#if name !="unknown"><@l.logout/></#if>
=======

            <div class="navbar-text">${name}</div>
>>>>>>> origin/master
        </div>
    </div>
</nav>
