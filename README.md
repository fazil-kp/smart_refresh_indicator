# Smart Refresh Indicator

A customizable Flutter refresh indicator widget with support for background and indicator colors.

## Features

- Customizable background color
- Customizable indicator color
- Easy to integrate with your Flutter application


## Examples

[<video controls src="refresh_indicator.mp4" title="Title"></video>](https://github.com/user-attachments/assets/4ccb8df9-b429-4554-be9b-72d948d02fda)


## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  smart_refresh_indicator: ^0.0.1
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
