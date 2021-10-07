<#import "parts/common.ftl" as c>


<@c.page>
<div class="form-row">
        <form method="get" action="/main" class="row g-3">
            <div class="col-auto">
            <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag">
            </div>
            <div class="col-auto">
            <button type="submit" class="btn btn-primary">Search</button>
            </div>
            <div></div>
        </form>
</div>

<button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    Add new message
</button>


<div class="collapse mt-3" id="collapseExample">
    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
        <input type="text" name="text" class="form-control" placeholder="Введите сообщение" />
        </div>
        <div class="mb-3">
        <input type="text" name="tag" class="form-control" placeholder="Тэг">
        </div>
        <div class="mb-3">
            <input class="form-control" type="file" id="formFile">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary">Добавить</button>
    </form>
</div>
<div class="row row-cols-1 row-cols-md-3 g-4 mt-3">
<#list messages as message>
        <div class="card h-100">
        <#if message.filename??>
        <img src="/img/${message.filename}" class="card-img-top">
    </#if>
<div class="card-body">
    <span>${message.text}</span>
    <i>${message.tag}</i>
</div>
 <div class="card-footer text-muted">
    ${message.authorName}
 </div>
</div>

<#else>
No message
</#list>
</div>
</@c.page>