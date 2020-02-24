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
{block name='address_selector_blocks'}
  {foreach $addresses as $address}
    <div class="custom-control custom-radio p-0">          
          <input
                          type="radio"
                          name="{$name}"
                          value="{$address.id}"
                          id="r-{$name|classname}-address-{$address.id}"
                          class="custom-control-input"
                          {if $address.id == $selected}checked{/if}>
          <label 
            for="r-{$name|classname}-address-{$address.id}" 
            class="d-block"       
          >

              <div class="container card py-2">
                <div class="row align-items-center">
                    <div class="col d-none d-md-block">
                        <svg viewBox="0 0 100 100" role="presentation" class="ui-icon ui-icon--location ui-badge__icon ui-badge__icon--medium">
                          <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#ui-icon--location">
                            <svg id="ui-icon--location" viewBox="0 0 48 48">
                              <path d="M24.53 35.03l-.531.53-.53-.53c-5.125-5.127-7.716-9.795-7.716-14.034a8.246 8.246 0 1 1 16.492 0c0 4.24-2.591 8.907-7.716 14.034zm-7.277-14.034c0 3.627 2.231 7.781 6.746 12.435 4.515-4.654 6.746-8.808 6.746-12.435a6.746 6.746 0 0 0-13.492 0zM24 24.76a3.755 3.755 0 1 1 0-7.51 3.755 3.755 0 0 1 0 7.51zm0-1.5a2.255 2.255 0 1 0 0-4.51 2.255 2.255 0 0 0 0 4.51z" fill="#3483FA" fill-rule="nonzero"></path>
                            </svg>
                          </use>
                        </svg>
                    </div>
                    <div class="col-md-7 mb-2 mb-md-0">
                      <div class="small">
                        {$address.formatted nofilter}
                      </div>
                    </div>
                    <div class="col-md-3 text-md-right text-md-right">

                      {if $interactive}
                          <div class="small">
                              <a 
                                class="edit-address text-muted"
                                data-link-action="edit-address"
                                href="{url entity='order' params=['id_address' => $address.id, 'editAddress' => $type, 'token' => $token]}"
                              >
                                <i class="material-icons edit">&#xE254;</i>{l s='Edit' d='Shop.Theme.Actions'}
                              </a>
                              <a
                                class="delete-address text-muted"
                                data-link-action="delete-address"
                                href="{url entity='order' params=['id_address' => $address.id, 'deleteAddress' => true, 'token' => $token]}"
                              >
                                <i class="material-icons delete">&#xE872;</i>{l s='Delete' d='Shop.Theme.Actions'}
                              </a>
                          </div>
                      {/if}
                    </div>
                </div>
              </div>
          </label
    </div>

    
  {/foreach}

  {if $interactive}
    <p>
      <button class="ps-hidden-by-js form-control-submit center-block" type="submit">{l s='Save' d='Shop.Theme.Actions'}</button>
    </p>
  {/if}
{/block}
