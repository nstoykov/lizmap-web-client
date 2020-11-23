{meta_htmlmodule css 'junittests', 'design.css'}
<div id="header">
{$page_title}
</div>

<div id="main">
{$MAIN}
</div>

<div id="sidemenu">
Php version : {$versionphp}<br/>
Jelix version: {$versionjelix}<br/>

<h2>Tests menu</h2>
{if count($modules)}
    <ul>
        <li><a href="{jurl 'junittests~default:index'}">Home</a></li>
        <li><a href="{jurl 'junittests~default:all'}">Run all tests</a></li>
        <li><a href="{jurl 'junittests~default:all' , array ( 'categ'=> 'unit' ) }">Run all unit tests</a></li>
        <li><a href="{jurl 'junittests~default:all' , array ( 'categ'=> 'functional') }">Run all functional tests</a></li>
    </ul>

    <h3>Modules</h3>
    <ul>
    {foreach $modules as $module=>$tests}
        <li>{$module}
            <ul>
                <li><a href="{jurl 'junittests~default:module', array('mod'=>$module)}">All tests</a></li>
                <li><a href="{jurl 'junittests~default:module', array('mod'=>$module , 'categ' => 'unit')}">All unit tests</a></li>
                <li><a href="{jurl 'junittests~default:module', array('mod'=>$module , 'categ' => 'functional' )}">All functional tests</a></li>
        {foreach $tests as $test}
                <li><a href="{jurl 'junittests~default:single', array('mod'=>$module, 'test'=>$test[1])}">{$test[2]}</a>
        {/foreach}
            </ul>
        </li>
    {/foreach}
    </ul>
{else}
    <p>No availabled tests.</p>
{/if}

</div>

<div id="footer">
web page generated by {@jelix~jelix.framework.name@}
</div>