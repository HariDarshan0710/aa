package com.example.program4;
import androidx.appcompat.app.AppCompatActivity;
import android.app.WallpaperManager;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import java.util.Timer;
import java.util.TimerTask;
public class MainActivity extends AppCompatActivity implements View.OnClickListener {
 Button btnChangeWallpaper;
 boolean running;
 int[] imagesArray=new int[]{R.drawable.image1,
 R.drawable.image2,
 R.drawable.image3,R.drawable.image4};
 int i=0;
 @Override
 protected void onCreate(Bundle savedInstanceState) {
 super.onCreate(savedInstanceState);
 setContentView(R.layout.activity_main);
 btnChangeWallpaper=(Button)
 findViewById(R.id.btn_start_change_wallpaper);
 btnChangeWallpaper.setOnClickListener(this);
 }
 public void onClick(View v)
 {
 if(!running)
 {
 new Timer().schedule
 (new MyTimer(),0,30000);
 running=true;
 }
 }
 class MyTimer extends TimerTask
 {
 public void run()
 {
 try {
 WallpaperManager wallpaperManager =
 WallpaperManager.getInstance(getBaseContext());
 if(i==4)
 {
 i=1;
 }
 if(i==2)
 {
 i=3;
 }
 if(i==3)
 {
 i=2;
 }
 if(i==1)
 {
 i=3;
 }
 wallpaperManager.setBitmap
 (BitmapFactory.decodeResource(getResources()
 ,imagesArray[i]));
 i++;
 }
 catch(Exception e)
 {
 }
 }
 }
}
