# Generated by Django 3.2.6 on 2021-08-30 08:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0002_auto_20210830_1337'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='category_image',
            field=models.FileField(null=True, upload_to='static/uploads'),
        ),
    ]