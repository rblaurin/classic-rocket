{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{block name='header'}
  {block name='header_nav'}
      <nav class="header-nav border-bottom py-2 container text--center">
        <div class="header-nav__container">
          <div class="col-md-2 p-0">
            <a href="{$urls.base_url}">
              <img class="logo img-fluid" src="{$urls.img_url}logotipo-25-de-marco-online.svg" alt="{$shop.name} {l s='logo' d='Shop.Theme.Global'}">
            </a>
          </div>
        <div class="col-md-8 displayNav2 right-nav d-none d-md-flex">
          {widget name="ps_contactinfo" hook="displayNav"}
        </div>
        </div>
      </nav>
  {/block}
  {block name='header_top'}
  {/block}
{/block}
