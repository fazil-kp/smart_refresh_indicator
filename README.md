# Smart Refresh Indicator

A customizable Flutter refresh indicator widget with support for background and indicator colors.

## Features

- Customizable background color
- Customizable indicator color
- Easy to integrate with your Flutter application


## Examples

![refresh_indicator](https://github.com/user-attachments/assets/60058a91-194b-41a6-a03b-4d7eeb32dcf4)



## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  smart_refresh_indicator: latest_version
```

## Usage

To use the SmartRefreshIndicator, create an instance of the widget and configure the desired properties. Below is an example of how to implement it in your Flutter application:

```
SmartRefreshIndicator(
  onRefresh: () async {
    // Here, you can perform your data fetching or refreshing logic.
  },
  child: ListView.builder(
    physics: const AlwaysScrollableScrollPhysics(), // Always include this line; without it, the refresh indicator will not work.
    itemCount: 30,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('Item $index'),
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(Icons.person, color: Colors.white),
        ),
        subtitle: const Text('Software Developer'),
        trailing: const Icon(Icons.arrow_forward_ios),
      );
    },
  ),
)

```
