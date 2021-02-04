Ứng dụng đồng hồ đơn giản


Họ và tên: Nguyễn Hồng Quân


MSSV:17021324


Cấu trúc thư mục mã nguồn:


``` bash
└───lib
    ├───clockController.dart
    ├───main.dart
    │
    ├───clock
    │   ├───clockBody.dart
    │   ├───clockFace.dart
    │   ├───clockHandHour.dart
    │   ├───clockHandMinutes.dart
    │   ├───clockHands.dart
    │   └───clockNumber.dart
    │
    └───screen
        ├───clock.dart
        ├───locationList.dart
        └───stopwatch.dart
```


Chức năng cơ bản:


+ Đồng hồ: Đồng hồ kim chỉ thời gian hiện tại

+ Đồng hồ bấm giờ: Đồng hồ bấm giờ theo định dạng phút:giây:mili giây với mili giây được làm tròn tới 2 chữ số, có các chức năng cơ bản như bắt đầu, dừng và bắt đầu lại


Cần thực hiện thêm: Có thể chọn múi giờ các nhau để đồng hồ chỉ thời gian của múi giờ đó


Ảnh màn hình demo:


Màn hình đồng hồ chỉ thời gian hiện tại:


<img src="https://github.com/nguyenquan123vn/Flutter_clock_app/blob/main/demo/clock_screen.PNG" width="200">



Màn hình đồng hồ bấm giờ (hoặc sau khi chọn nút Reset):


<img src="https://github.com/nguyenquan123vn/Flutter_clock_app/blob/main/demo/stopwatch_screen.PNG" width="200">


Bắt đầu đồng hồ bấm giờ:


<img src="https://github.com/nguyenquan123vn/Flutter_clock_app/blob/main/demo/run_stopwatch.PNG" width="200">



Dừng đồng hồ bấm giờ:


<img src="https://github.com/nguyenquan123vn/Flutter_clock_app/blob/main/demo/stopwatch_stop.PNG" width="200">




