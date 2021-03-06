{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/OSL-3.0
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
 * @license   https://opensource.org/licenses/OSL-3.0 Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

{extends file="helpers/options/options.tpl"}
{block name="input"}
	{if $field['type'] == 'maintenance_ip'}
		{$field['script_ip']}
		<div class="col-lg-9">
			<div class="row">
				<div class="col-lg-8">
					<input type="text"{if isset($field['id'])} id="{$field['id']}"{/if} size="{if isset($field['size'])}{$field['size']|intval}{else}5{/if}" name="{$key}" value="{$field['value']|escape:'html':'UTF-8'}" />
				</div>
				<div class="col-lg-1">
					{$field['link_remove_ip']}
				</div>
			</div>
		</div>
	{else}
		{$smarty.block.parent}
	{/if}
{/block}
