# Generated by Django 3.2.6 on 2021-09-07 11:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cakes', '0008_cart'),
    ]

    operations = [
        migrations.CreateModel(
            name='Seller',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cake_name', models.CharField(max_length=200)),
                ('cake_price', models.FloatField()),
                ('cake_image', models.FileField(upload_to='static/uploads')),
                ('created_date', models.DateTimeField(auto_now_add=True, null=True)),
            ],
        ),
    ]
