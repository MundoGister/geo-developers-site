<!DOCTYPE HTML>
<html>
<head>
    {include file="header.tpl" title="Comunidad de Geo Developers"}
</head>
<body id="notifications-page">
{include file="menu.tpl" title="Comunidad de Geo Developers"}

<div class="container style1 wrapper">
    <div class="row">
        <div class="col-md-12 ">
            <h1 class="mb1">
                <i class="glyphicon glyphicon-bell"></i> Avisos
            </h1>

            {if isset($MESSAGE)}
                <div class="box success">{$MESSAGE}</div>
            {/if}
            <form action="." method="POST" class="box text-left">
                {for $I=0 to $NUMGROUPINGS}
                    <div data-grouping="{$GROUPINGS[$I]["id"]}" class="row mb1">
                        <p class="col-md-12 pt1">{$GROUPINGS[$I]["name"]}</p>
                        <input type="hidden" name="groups[]" value="{$GROUPINGS[$I]["id"]}">

                        {for $J=0 to {$GROUPINGS[$I]["count"]}}
                            <div class="col-md-6 pt0">
                                <label>
                                    <input type="checkbox"
                                           value="{$GROUPINGS[$I]["groups"][$J]["name"]}"
                                           name="{$GROUPINGS[$I]["id"]}[]"
                                           {if isset($INTERESTS[{$GROUPINGS[$I]["groups"][$J]["name"]}])}
                                               checked="checked"
                                           {/if}

                                    >
                                    {$GROUPINGS[$I]["groups"][$J]["name"]}
                                </label>
                            </div>


                        {/for}
                    </div>
                {/for}

                <input type="submit" value="Actualizar" class="btn btn-primary btn-block" style="margin:0">

            </form>
        </div>

    </div>
</div>


{include file="footer.tpl"}
<script>
    require([
        'jquery',
        'academy',
        'bootstrap'
    ],function($, academy){
        academy.init("videos");
    });
</script>
</body>
</html>
