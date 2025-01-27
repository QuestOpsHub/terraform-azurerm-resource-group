# Azure Resource Group Terraform Module

Terraform module to create an Azure Resource Group.

# Table of Contents

- [Azure Resource Naming Convention](#azure-resource-naming-convention)
    - [Format](#Format)
    - [Components](#Components)
- [Requirements](#requirements)
- [Providers](#providers)
- [Modules](#modules)
- [Resources](#resources)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Azure Resource Naming Convention

Resource names should clearly indicate their type, workload, environment, and region. Using a consistent naming convention ensures clarity, uniformity, and easy identification across all repositories.

#### Format

```
<resource_prefix>-<app_or_project>-<environment>-<region>-<optional_unique_suffix>
```

#### Components

| **Component**           | **Description**                                                                      | **Example**             |
|--------------------------|--------------------------------------------------------------------------------------|-------------------------|
| `resource_prefix`        | Short abbreviation for the resource type.                                           | `rg` (Resource Group)   |
| `app_or_project`         | Identifier for the application or project.                                          | `qoh`           |
| `environment`            | Environment where the resource is deployed (`prod`, `dev`, `test`, etc.).           | `prod`                 |
| `region`                 | Azure region where the resource resides (e.g., `cus` for `centralus`).              | `cus`                  |
| `optional_unique_suffix` | Optional unique string for ensuring name uniqueness, often random or incremental.    | `abcd`, `a42n`                 |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | (Optional) The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Resource Group. |
| <a name="output_location"></a> [location](#output\_location) | The Location of the Resource Group. |
| <a name="output_name"></a> [name](#output\_name) | The Name of the Resource Group. |
| <a name="output_tags"></a> [tags](#output\_tags) | The Tags of the Resource Group. |
