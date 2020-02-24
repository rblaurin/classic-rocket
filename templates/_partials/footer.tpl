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
<div class="container">
  <div class="row">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<div class="footer-container">
  <div class="container small">
    <div class="text-center mb-3">
      <a href="#maisInfo" class="nav-footer-access" data-toggle="collapse">{l s='show details' d='Shop.Theme.Actions'}</a>
    </div>
    <div id="maisInfo" class="row collapse">
      {block name='hook_footer'}
        {hook h='displayFooter'}
      {/block}
      {**criar módulo**}
          <div class="container">
              <div class="row">
                <div class="col py-2 py-md-0">
                    <span>segurança e credibilidade</span>
                    <div class="mt-1 d-flex">
                        <a  title="Clearsale - Antifraude" rel="nofollow noopener" class="seguranca-credibilidade clearsale text-hide">clearsale</a>
                        <a  title="Navegação segura do Google" rel="nofollow noopener" class="seguranca-credibilidade safe_google text-hide">safe_google</a>
                        <a  title="Navegação segura do Norton" rel="nofollow noopener" class="seguranca-credibilidade safe_norton text-hide">safe_norton</a>
                    </div>
                </div>
                <div class="col-md-6 py-2 py-md-0">
                    <span class="text-lowercase">{l s='Payment method' d='Shop.Theme.Checkout'}</span>
                    <div class="d-flex justify-content-between"">
                      <a  title="Mastercard" rel="nofollow noopener" class="credit-card mastercard text-hide">mastercard</a>
                      <a  title="Visa" rel="nofollow noopener" class="credit-card visa text-hide">visa</a>
                      <a  title="Elo" rel="nofollow noopener" class="credit-card elo text-hide">elo</a>
                      <a  title="Amex" rel="nofollow noopener" class="credit-card amex text-hide">amex</a>
                      <a  title="Diners" rel="nofollow noopener" class="credit-card diners text-hide">diners</a>
                      <a  title="Hiper" rel="nofollow noopener" class="credit-card hiper text-hide">hiper</a>
                      <a  title="Hipercard" rel="nofollow noopener" class="credit-card hipercard text-hide">hipercard</a>
                      <a  title="JCB" rel="nofollow noopener" class="credit-card jcb text-hide">jcb</a>
                      <a  title="Boleto bancário" rel="nofollow noopener" class="credit-card barcode text-hide">boleto bancário</a>
                    </div>
                </div>            
              </div>
          </div>
      {**criar módulo**}
    </div>
    <div class="row">
      {block name='hook_footer_after'}
        {hook h='displayFooterAfter'}
      {/block}
    </div>
    <div class="row mt-3">
      <div class="col-md-12">
        <p class="text-center xsmall">
          {block name='copyright_link'}            
              {$shop.name} - {l s='%copyright% %year% - Ecommerce software by %prestashop%' sprintf=['%prestashop%' => 'PrestaShop™', '%year%' => 'Y'|date, '%copyright%' => '©'] d='Shop.Theme.Global'} - {$shop.phone} - <i class="material-icons">security</i> {l s='Personalized and secure access' d='Shop.Theme.Customeraccount'}           
          {/block}
        </p>
      </div>
    </div>
  </div>
</div>



{literal}
<style>
  .custom-file-label::after{
    content:"{/literal}{l s='Choose file' d='Shop.Theme.Actions'}"{literal}
  }
</style>
{/literal}
