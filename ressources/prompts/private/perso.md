# Personal prompts for my startup `:perso`

## Generate a GQL Mutation `:persoHookGenerateMutation`

```text
Complete the following GQL mutation (surrounded by "---"):

---
import { graphql, useGqlMutation } from "@/lib/gql";
import { useQueryClient } from "@tanstack/react-query";

export const $xxxHookName = () => {
    const queryClient = useQueryClient();

    export const $xxx = graphql(`
        mutation $xxx($xxxParamsGQL) {
            $xxx($xxxParamsGQL)
        }
    `);

    const mutation = useGqlMutation({
        document: $xxx,
    });

    const update = async ($xxxParams) => {
        const _mutationResult = await mutation.mutateAsync($xxxParams);

        await queryClient.invalidateQueries({
            queryKey: [""],
        });

        return _mutationResult;
    };

    return { update };
};
---

0. Hook name is "[[hook name]]" to replace "$xxxHookName"

1. Acknowledge mutation definition:

[[mutation definition]]

2. Extract mutation name
3. Replace mutation's name in the code where "$xxx" appears
4. Replace parameters in the code where "$xxxParams" appears and add TypeScript types
5. Replace mutation's parameters in the code where "$xxxParamsGQL" appears
```
