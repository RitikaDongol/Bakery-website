# Generated by Django 3.2.6 on 2021-09-02 06:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0006_remove_category_category_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='category_image',
            field=models.FileField(null=True, upload_to='static/uploads'),
        ),
    ]
