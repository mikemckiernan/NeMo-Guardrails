# NVIDIA NeMo Guardrails Product Documentation

::::{grid} 1 1 2 3

:::{grid-item-card} {octicon}`shield-check;1.5em;sd-mr-1` NeMo Guardrails
:link: ./guardrails/index.html

Add safety checks to LLM-based applications between the application code and the LLM.
:::

:::{grid-item-card} {octicon}`plug;1.5em;sd-mr-1` Community Integrations
:link: ./community/index.html

Use popular safety checks with your NeMo Guardrails implementation.
:::

:::{grid-item-card} {octicon}`code;1.5em;sd-mr-1` Colang Developer Guide
:link: ./colang/index.html

Develop custom safety checks for conversational systems.
:::

::::

```{raw} html
<script>
document.addEventListener('DOMContentLoaded', function() {
    /* Remove the Table of Contents */
    left = document.getElementsByClassName("bd-sidebar-primary");
    for (let i = 0; i < left.length; i++){
        left[i].classList.add('d-none');
    }
    right = document.getElementsByClassName("bd-sidebar-secondary");
    for (let i = 0; i < right.length; i++){
        right[i].classList.add('d-none');
    }
});
</script>
```
