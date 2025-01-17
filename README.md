# La Cucina | PancakeSwap Subgraph

La Cucina redefines DeFi!
In the mood for a Pancake ? Gain even more Yields in Pancake Swap through La Cucina.

## PancakeSwap Subgraph

TheGraph exposes a GraphQL endpoint to query the events and entities within the Binance Smart Chain and PancakeSwap ecosystem.

Currently, there are multiple subgraphs, but additional subgraphs can be added to this repo:

1. **[Blocks](https://thegraph.com/explorer/subgraph/pancakeswap/blocks)**: Tracks all blocks on Binance Smart Chain.

2. **[Pairs](https://thegraph.com/explorer/subgraph/pancakeswap/pairs)**: Tracks all PancakeSwap Pairs and Tokens.

3. **[Exchange](https://pancakeswap.medium.com/pancakeswap-info-relaunch-in-partnership-with-150-000-bounty-winner-streamingfast-f7892559d388)**: Tracks all PancakeSwap Exchange data with price, volume, liquidity, ...

4. **[Profile](https://thegraph.com/explorer/subgraph/pancakeswap/profile)**: Tracks all PancakeSwap Profile with teams, users, points and campaign.

5. **[Lottery](https://thegraph.com/explorer/subgraph/pancakeswap/lottery)**: Tracks all PancakeSwap Lottery with rounds, draws and tickets.

6. **[Timelock](https://thegraph.com/explorer/subgraph/pancakeswap/timelock)**: Tracks all timelock transactions queued, executed, and cancelled.

7. **[SmartChef](https://thegraph.com/explorer/subgraph/pancakeswap/smartchef)**: Tracks all PancakeSwap SmartChef (also known as Pools) contract, with related tokens.

8. **[Trading Competition v1](https://thegraph.com/explorer/subgraph/pancakeswap/trading-competition-v1)**: Tracks all metrics for the Easter Battle (April 07—14, 2021).

## v1

To access subgraphs related to PancakeSwap v1 ecosystem ([article](https://pancakeswap.medium.com/the-great-migration-vote-4093cb3edf23)), use [`v1`](https://github.com/pancakeswap/pancake-subgraph/tree/v1) branch.

## To setup and deploy

For any of the subgraph: `blocks` as `[subgraph]`

1. Run the `yarn run codegen:[subgraph]` command to prepare the TypeScript sources for the GraphQL (generated/*).

2. Run the `yarn run build:[subgraph]` command to build the subgraph, and check compilation errors before deploying.

3. Run `graph auth https://api.thegraph.com/deploy/ '<ACCESS_TOKEN>'`

4. Deploy via `yarn run deploy:[subgraph]`.
