<div class="nav"> 
    <div class="wrapper fn-clear">
        <div class="head-fn fn-clear">
            <h1 class="fn-left">
                ${logoIcon}
            </h1>
            <#if esEnabled || algoliaEnabled>
            <form class="responsive-hide fn-left" target="_blank" action="/search">
                <input class="search" placeholder="Search HacPai" type="text" name="key" id="search" value="<#if key??>${key}</#if>" >
                <input type="submit" class="fn-none" value=""/>
            </form>
            </#if>
        </div>

        <div class="fn-clear user-nav">
            <#if isLoggedIn>
            <#if "adminRole" == userRole>
            <a href="/admin" aria-label="${adminLabel}" class="tooltipped tooltipped-sw last"><span class="icon-userrole"></span></a>
            </#if>
            <a href="/member/${currentUser.userName}" aria-label="Go Home" class="tooltipped tooltipped-s <#if 'adminRole' != userRole>last </#if>nav-avatar">
                <span class="avatar-small" style="background-image:url('${currentUser.userAvatarURL}-64.jpg?${currentUser.userUpdateTime?c}')"></span>
            </a>
            <a href="/activities" aria-label="${activityLabel}" class="tooltipped tooltipped-s"><span class="icon-flag"></span></a>
            <a href="/pre-post" aria-label="${addArticleLabel}" 
               class="tooltipped tooltipped-s responsive-show"><span class="icon-addfile"></span></a>
            <a id="aNotifications" class="tooltipped tooltipped-s <#if unreadNotificationCount == 0>no-msg<#else>msg</#if>" href="/notifications" aria-label="${messageLabel}">${unreadNotificationCount}</a>
            <#else>
            <a id="aRegister" href="javascript:Util.goRegister()" class="last ft-blue unlogin" 
               title="${registerLabel}">${registerLabel}</a>
            <a href="javascript: Util.showLogin();" title="${loginLabel}" class="unlogin">${loginLabel}</a>
            <div class="form fn-none">
                <table cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="40">
                            <label for="nameOrEmail">${accountLabel}</label>
                        </td>
                        <td>
                            <input id="nameOrEmail" type="text" placeholder="${nameOrEmailLabel}" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="loginPassword">${passwordLabel}</label>
                        </td>
                        <td>
                            <input type="password" id="loginPassword" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="right">
                            <div id="loginTip" class="tip"></div><br/>
                            <button class="info" onclick="window.location.href = '${servePath}/forget-pwd'">${forgetPwdLabel}</button>
                            <button class="red" onclick="Util.login()">${loginLabel}</button>
                        </td>
                    </tr>
                </table>
            </div>
            </#if>
        </div>
    </div>
</div>
